@Component
@Preview
export struct ColumnDemo {
  build() {
    Column({ space: 8 }) {

      //1.签到
      Text('签到提醒')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)


      //2.签到提醒
      Text('上课五分钟前签到扫码')
        .fontSize(24)
        .fontColor('#666')
        .maxLines(2)
        .layoutWeight(1)


      //3.按钮
      Button('提醒')
        .margin({ top: 12 })
        .onClick(() => {
          console.log("允许签到");
        })

    }
    .width('100%')
    .height(600)
    .borderRadius(12)
    .shadow({ radius: 8, color: $r('app.color.start_background') })
    .backgroundColor('#ff7498d7')
  }
}
