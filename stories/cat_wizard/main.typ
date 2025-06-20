#set page(height: auto, margin: 4mm)
#set text(14pt)

#let text-color = black
#let background-color = white
#if sys.inputs.at("theme", default: "light") == "dark" {
  text-color = rgb(240, 246, 252)
  background-color = rgb("#0d1117")
}
#set text(text-color)
#set page(fill: background-color)

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
