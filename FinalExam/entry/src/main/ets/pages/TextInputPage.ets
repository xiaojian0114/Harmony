import router from '@ohos.router';

@Entry
@Component
export struct TextInputPage {
  @State inputText: string = '';
  @State passwordText: string = '';
  @State multilineText: string = '';
  @State phoneNumber: string = '';
  @State email: string = '';

  build() {
    Column() {
      Text('输入框组件示例')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 30 })

      // 基础输入框
      Text('普通输入框:')
        .fontSize(16)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 5 })

      TextInput({ placeholder: '请输入文本' })
        .width('100%')
        .height(45)
        .onChange((value: string) => {
          this.inputText = value;
        })
        .margin({ bottom: 20 })

      Text(`输入内容: ${this.inputText}`)
        .fontSize(14)
        .fontColor(Color.Gray)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 20 })

      // 密码输入框
      Text('密码输入框:')
        .fontSize(16)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 5 })

      TextInput({ placeholder: '请输入密码' })
        .width('100%')
        .height(45)
        .type(InputType.Password)
        .onChange((value: string) => {
          this.passwordText = value;
        })
        .margin({ bottom: 20 })

      // 多行输入框
      Text('多行输入框:')
        .fontSize(16)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 5 })

      TextInput({ placeholder: '请输入多行文本...' })
        .width('100%')
        .height(100)
        // .multiline(true)
        .onChange((value: string) => {
          this.multilineText = value;
        })
        .margin({ bottom: 20 })

      // 电话号码输入框
      Text('电话号码:')
        .fontSize(16)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 5 })

      TextInput({ placeholder: '请输入电话号码' })
        .width('100%')
        .height(45)
        .type(InputType.Number)
        .maxLength(11)
        .onChange((value: string) => {
          this.phoneNumber = value;
        })
        .margin({ bottom: 20 })

      // 邮箱输入框
      Text('邮箱地址:')
        .fontSize(16)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 5 })

      TextInput({ placeholder: '请输入邮箱地址' })
        .width('100%')
        .height(45)
        .type(InputType.Email)
        .onChange((value: string) => {
          this.email = value;
        })
        .margin({ bottom: 20 })

      // 带图标的输入框
      Text('搜索框:')
        .fontSize(16)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 5 })

      TextInput({ placeholder: '搜索...' })
        .width('100%')
        .height(45)
        .backgroundColor('#F5F5F5')
        .borderRadius(10)
        .margin({ bottom: 30 })

      Button('清空所有输入')
        .onClick(() => {
          this.inputText = '';
          this.passwordText = '';
          this.multilineText = '';
          this.phoneNumber = '';
          this.email = '';
        })
        .width('80%')
        .height(45)
        .backgroundColor('#FF6B6B')
        .fontColor(Color.White)
        .margin({ bottom: 10 })

      Button('返回')
        .onClick(() => {
          router.back();
        })
        .width('80%')
        .height(50)
        .margin({ top: 10 })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
    .padding(20)
  }
}