import router from '@ohos.router';

@Entry
@Component
export struct IndexPage {
  build() {
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Start }) {

      Button("手势页面")
        .backgroundColor($r('app.color.success_color'))
        .onClick(() => {
          router.pushUrl({ url: 'pages/GesturePage' });
        })
        .width('100%')
        .height(60)
        .margin({ top: 10 })


      Button("文本")
        .backgroundColor($r('app.color.primary_color'))
        .onClick(() => {
          router.pushUrl({ url: 'pages/TextPage' });
        })
        .width('100%')
        .height(60)
        .margin({ top: 10 })


      Button("按钮")
        .backgroundColor($r('app.color.warning_color'))
        .onClick(() => {
          router.pushUrl({ url: 'pages/ButtonPage' });
        })
        .width('100%')
        .height(60)
        .margin({ top: 10 })


      Button("图片")
        .backgroundColor('#9C27B0')
        .onClick(() => {
          router.pushUrl({ url: 'pages/ImagePage' });
        })
        .width('100%')
        .height(60)
        .margin({ top: 10 })


      Button("文本输入")
        .backgroundColor('#2196F3')
        .onClick(() => {
          router.pushUrl({ url: 'pages/TextInputPage' });
        })
        .width('100%')
        .height(60)
        .margin({ top: 10 })


      Button("列表效果")
        .backgroundColor('#FF9800')
        .onClick(() => {
          router.pushUrl({ url: 'pages/ListPage' });
        })
        .width('100%')
        .height(60)
        .margin({ top: 10 })


      Button("滑动效果")
        .backgroundColor('#9C27B0')
        .onClick(() => {
          router.pushUrl({ url: 'pages/ScrollPage' });
        })
        .width('100%')
        .height(60)
        .margin({ top: 10 })
    }
  }
}