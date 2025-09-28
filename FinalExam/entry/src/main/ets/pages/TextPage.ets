import router from '@ohos.router';

@Entry
@Component
export struct TextPage {
  @State textContent: string = 'ArkTS文本组件示例';

  build() {
    Column() {
      // 基础文本
      Text('基础文本')
        .fontSize(16)
        .fontColor(Color.Black)
        .margin({ bottom: 10 })

      // 大标题文本
      Text('大标题文本')
        .fontSize(32)
        .fontWeight(FontWeight.Bold)
        .fontColor('#007DFF')
        .margin({ bottom: 20 })

      // 长文本 - 自动换行
      Text('这是一个非常长的文本示例，用于展示ArkTS中文本组件的自动换行功能。当文本内容超过容器宽度时会自动换行显示。')
        .fontSize(14)
        .fontColor(Color.Gray)
        .textAlign(TextAlign.Start)
        .maxLines(3)
        .lineHeight(20)
        .margin({ bottom: 20 })

      // 装饰文本
      Text('装饰文本效果')
        .fontSize(18)
        .fontColor(Color.Red)
        .decoration({ type: TextDecorationType.Underline, color: Color.Red })
        .margin({ bottom: 20 })

      // 文本溢出处理
      Text('这是一个超长的单行文本，超出部分会显示省略号')
        .fontSize(16)
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .margin({ bottom: 20 })

      // 动态文本
      Text(this.textContent)
        .fontSize(20)
        .fontColor(Color.Blue)
        .onClick(() => {
          this.textContent = '文本被点击了！ ' + new Date().toLocaleTimeString();
        })
        .margin({ bottom: 20 })

      // 富文本
      Text() {
        Span('红色文本 ')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Red)
        Span('普通文本 ')
          .fontSize(16)
          .fontColor(Color.Black)
        Span('蓝色加粗')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Blue)
      }
      .fontSize(18)
      .fontColor(Color.Black)
      .lineHeight(25)

      Button('返回')
        .onClick(() => {
          router.back();
        })
        .width('80%')
        .height(50)
        .margin({ top: 30 })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
    .padding(20)
  }
}