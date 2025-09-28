import router from '@ohos.router';

@Entry
@Component
export struct ImagePage {
  @State imageScale: number = 1.0;
  @State imageOpacity: number = 1.0;

  build() {
    Column() {
      Text('图片组件示例')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 30 })

      // 基础图片
      Text('基础图片:')
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .margin({ bottom: 10 })
        .alignSelf(ItemAlign.Start)

      Image($r('app.media.home'))
        .width(100)
        .height(100)
        .margin({ bottom: 20 })

      // 网络图片
      Text('网络图片:')
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .margin({ bottom: 10 })
        .alignSelf(ItemAlign.Start)

      Image('https://via.placeholder.com/150')
        .width(150)
        .height(150)
        .borderRadius(10)
        .margin({ bottom: 20 })

      // 可缩放图片
      Text('可缩放图片:')
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .margin({ bottom: 10 })
        .alignSelf(ItemAlign.Start)

      Image($r('app.media.home'))
        .width(120)
        .height(120)
        .scale({ x: this.imageScale, y: this.imageScale })
        .opacity(this.imageOpacity)
        .onClick(() => {
          this.imageScale = this.imageScale === 1.0 ? 1.5 : 1.0;
          this.imageOpacity = this.imageOpacity === 1.0 ? 0.7 : 1.0;
        })
        .margin({ bottom: 20 })

      // 图片填充模式
      Text('不同填充模式:')
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .margin({ bottom: 10 })
        .alignSelf(ItemAlign.Start)

      Row({ space: 10 }) {
        Image($r('app.media.home'))
          .width(80)
          .height(80)
          .objectFit(ImageFit.Contain)
          .backgroundColor('#F0F0F0')
          .border({ width: 1, color: Color.Gray })

        Image($r('app.media.home'))
          .width(80)
          .height(80)
          .objectFit(ImageFit.Cover)
          .backgroundColor('#F0F0F0')
          .border({ width: 1, color: Color.Gray })

        Image($r('app.media.home'))
          .width(80)
          .height(80)
          .objectFit(ImageFit.Fill)
          .backgroundColor('#F0F0F0')
          .border({ width: 1, color: Color.Gray })
      }
      .margin({ bottom: 20 })
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)

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