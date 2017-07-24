require 'open-uri'
require 'nokogiri'
require 'kconv'
require 'csv'

count = 0
best_venture_100_list = []

  url = "http://best100.v-tsushin.jp/"

  charset = nil
  html = open(url) do |f|
    charset = f.charset
    f.read
  end

  doc = Nokogiri::HTML.parse(html.toutf8, nil, 'utf-8')
  companies = doc.css('ul#companyList')
  company_list = companies.css("li")
  company_list.each do |company|
    data = []
    count += 1
    name = company.css("img")[0][:title]
    url = company.css("a")[0][:href]
    logo = company.css("img")[0][:src]

    p count, name, url, logo

    data.push(count)
    data.push(name.tosjis)
    data.push(url.tosjis)
    data.push(logo.tosjis)

    best_venture_100_list.push(data)
  end

raise
CSV.open("best_venture_100_list.csv", "wb") do |csv|
  best_venture_100_list.each do |r|
    csv << r
  end
end
