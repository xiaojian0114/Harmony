import router from '@ohos.router';

@Entry
@Component
export struct ButtonPage {
  @State clickCount: number = 0;
  @State isDisabled: boolean = false;

  build() {
    Column() {
      Text('按钮组件示例')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 30 })

      Text(`点击次数: ${this.clickCount}`)
        .fontSize(18)
        .margin({ bottom: 20 })

      // 基础按钮
      Button('基础按钮')
        .onClick(() => {
          this.clickCount += 1;
        })
        .width('80%')
        .height(50)
        .margin({ bottom: 15 })

      // 圆角按钮
      Button('圆角按钮')
        .onClick(() => {
          this.clickCount += 1;
        })
        .width('80%')
        .height(50)
        .borderRadius(25)
        .backgroundColor('#007DFF')
        .fontColor(Color.White)
        .margin({ bottom: 15 })

      // 边框按钮
      Button('边框按钮')
        .onClick(() => {
          this.clickCount += 1;
        })
        .width('80%')
        .height(50)
        .border({
          width: 2,
          color: '#007DFF'
        })
        .backgroundColor(Color.White)
        .fontColor('#007DFF')
        .margin({ bottom: 15 })

      // 禁用状态按钮
      Button('禁用按钮')
        .onClick(() => {
          this.clickCount += 1;
        })
        .width('80%')
        .height(50)
        .enabled(!this.isDisabled)
        .backgroundColor(this.isDisabled ? Color.Gray : '#007DFF')
        .margin({ bottom: 15 })

      // 图标按钮
      Button('图标按钮')
        .onClick(() => {
          this.clickCount += 1;
        })
        .width('80%')
        .height(50)
        .backgroundColor('#FF6B81')
        .fontColor(Color.White)
        .margin({ bottom: 15 })

      // 状态切换按钮
      Button(this.isDisabled ? '启用所有按钮' : '禁用所有按钮')
        .onClick(() => {
          this.isDisabled = !this.isDisabled;
        })
        .width('80%')
        .height(50)
        .backgroundColor(this.isDisabled ? '#4CAF50' : '#FF9800')
        .fontColor(Color.White)
        .margin({ bottom: 15 })

      // 加载状态按钮
      Button('加载中...')
        .width('80%')
        .height(50)
        .backgroundColor('#9C27B0')
        .fontColor(Color.White)
        .margin({ bottom: 15 })

      Button('返回')
        .onClick(() => {
          router.back();
        })
        .width('80%')
        .height(50)
        .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
    .padding(20)
  }
}