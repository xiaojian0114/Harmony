@Component
@Preview

export struct MyCard {
  build() {
    Column(){


        Text("我的个人信息")
        Row(){
          Text('头像')
          Image('https://my-bucket-wyj.oss-cn-shanghai.aliyuncs.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_2025-09-09_150646_671.jpg')
        }.width(200).height(200)
        Text("我的名字:况队")

    }
  }
}