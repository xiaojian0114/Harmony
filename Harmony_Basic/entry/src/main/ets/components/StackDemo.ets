@Component
@Preview
export struct StackDemo {
  @Prop avatarUrl: string =
    'https://my-bucket-wyj.oss-cn-shanghai.aliyuncs.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_2025-09-09_150646_671.jpg'
  @State hasNewMsg: boolean = true;
  @Prop username: string = '况队'

  build() {

    Stack({ alignContent: Alignment.TopEnd }) {
      //底层 头像
      Image(this.avatarUrl)
        .width(60)
        .height(60)
        .borderRadius(30)
        .border(
          {
            width: 2,
            color: Color.Red
          }
        )

      if (this.hasNewMsg) {
        Circle({ width: 18, height: 18 }).fill(Color.Red).position({ x: 50, y: 0 })
        Text('9').fontSize(10).fontColor(Color.White).position({ x: 55, y: 4 })
      }

      //姓名
      Text(this.username)
        .fontSize(14)
        .fontColor(Color.Black)
        .position({ x: 8, y: 65 })
        .width(60)
        .textAlign(TextAlign.Center)


    }.width(70).height(85)

  }
}