@Component
@Preview
export struct RowDemo {
  build() {
    Row({ space: 8 }) {

      //1.图片
      Image($r('app.media.kuang'))
        .width(24)
        .height(24)

      //2.文本框
      Text('智宇开发')
        .fontSize(12)
        .fontWeight(FontWeight.Medium)
        .layoutWeight(1)

      //3.按钮
      Button('详情')
        .type(ButtonType.Capsule)
        .width(60)
        .height(20)

    }.padding({ left: 10, right: 10 })
    .width(300)
    .height(60)
    .backgroundColor($r('app.color.start_window_background'))
  }
}
