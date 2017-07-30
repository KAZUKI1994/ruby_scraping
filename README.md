# 実装内容
## 実装物一覧
- Yahoo TOP ページのスクレイピング
- Naverまとめ一覧のタイトル・画像・URLの取得
- BestVenture100から100社取得
- mercariから商品一覧を取得する

## mercariから商品一覧を取得する
### HTML分析
#### 商品一覧
[取得対象URL：メルカリソ商品一覧（カテゴリその他）](https://www.mercari.com/jp/category/959/)

```
<div class="items-box-content clearfix">
  <section class="items-box">
    <a href="https://item.mercari.com/jp/m22734940983/">★取得対象
    <figure class="items-box-photo">
      <img data-src="https://static-mercari-jp.akamaized.net/thumb/photos/m22734940983_1.jpg?1500905073" class="lazyload" alt="[未開封]月謝袋 こども向けデザイン">★取得対象
      <figcaption>
        <div class="item-sold-out-badge"><div>SOLD</div></div>★取得対象
      </figcaption>
    </figure>
    <div class="items-box-body">
      <h3 class="items-box-name font-2">[未開封]月謝袋 こども向けデザイン</h3>★取得対象
      <div class="items-box-num clearfix">
        <div class="items-box-price font-5">¥ 400</div>★取得対象
        <p class="item-box-tax">(税 ¥ 0)</p>★取得対象
      </div>
    </div>
    </a>
  </section>
  ...loop
```

##### 取得項目
- 商品詳細URL
- 商品画像URL
- 商品名
- 商品金額（上代）
- 税額
- SOLDOUT

# References
- [Nokogiriを使ったRubyスクレイピング1 ](http://morizyun.github.io/blog/ruby-nokogiri-scraping-tutorial/)
- [Nokogiriを使ったRubyスクレイピング2](http://hetaredream.hatenablog.com/entry/2014/12/20/163310)
