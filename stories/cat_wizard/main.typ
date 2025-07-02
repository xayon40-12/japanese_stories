#let text-color = black
#let background-color = white
#if sys.inputs.at("theme", default: "light") == "dark" {
  text-color = rgb(240, 246, 252)
  background-color = rgb("#0d1117")
}

#set page(height: auto, width: 10.5cm, margin: 4mm, fill: background-color)
#set text(text-color, lang: "ja", font: "Noto Sans Mono CJK JP")

#show heading: it => stack(
  spacing: 5pt,
  text(it),
  line(length: 100%, stroke: 0.5pt),
)

#import "@preview/cjk-unbreak:0.1.1": remove-cjk-break-space
#show: remove-cjk-break-space

#import "@preview/rubby:0.10.2": get-ruby
#let ruby = get-ruby(
  size: 0.5em,         // Ruby font size
  dy: -0.1em,             // Vertical offset of the ruby
  pos: top,            // Ruby position (top or bottom)
  alignment: "center", // Ruby alignment ("center", "start", "between", "around")
  delimiter: "|",      // The delimiter between words
  auto-spacing: true,  // Automatically add necessary space around words
)

= 第一章

昔々、ある魔法使いのネコはジンの国を旅していました。
ジンの国にはたくさんの大きな空を飛ぶ島がありました。
島はそれぞれ違っていました。
島によって緑色でたくさんの植物と重い雨があったり、青色で氷草地があったり、赤くて火山があったり、黄色で砂の山があったりしました。

その国ではある力強いネコがジロと呼ばれていました。
ジロの旅の目的はただ一つ、新しい魔法を見つけることです。
ジロは時々さまざまな人を助けたり、魔物を殺したり、魔法の指輪を作ったりしていました。
暇があれば新しい魔法を#ruby[さが][探]しました。
新しい魔法を見つけられなければ自分で新しい魔法を研究して作りました。

ジロは空の都市に行っていました。
特別な宝石を買わなければなりません。
空の宝石が手に入れたら飛びの魔法を作れます。
あの宝石は空の都市だけで見つけられます。
空の都市は青色のイスと呼ばせる島にあります。
今、ジロは緑色のルンと呼ばせる島にあっています。
だから、イスに旅していました。

= 第二章 「魔法のカエル」

