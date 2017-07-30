require 'open-uri'
require 'nokogiri'

count = 0
url = 'https://www.mercari.com/jp/category/959/'

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.xpath('//section[@class="items-box"]').each do |item|
  count += 1
  p count
  p item.css('a').attribute('href').value #商品詳細URL
  p item.css('img').attribute('data-src').value #商品画像URL
  p item.css('h3').inner_text #商品名
  p item.css('div.items-box-price').inner_text #商品価格
  p item.css('p.item-box-tax').inner_text #税
  p item.css('div.item-sold-out-badge').inner_text #SOLDOUT
end
