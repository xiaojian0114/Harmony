import router from '@ohos.router';

@Entry
@Component
export struct GesturePage {
  @State message: string = '手势页面';
  @State scaleValue: number = 1.0;
  @State angleValue: number = 0;

  build() {
    Column() {
      Text(this.message)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 30 })

      // 缩放手势
      Text('双指缩放')
        .fontSize(20)
        .scale({ x: this.scaleValue, y: this.scaleValue })
        .gesture(
          PinchGesture()
            .onActionStart(() => {
              console.log('缩放开始');
            })
            .onActionUpdate((event: PinchGestureEvent) => {
              this.scaleValue = event.scale;
            })
            .onActionEnd(() => {
              console.log('缩放结束');
            })
        )
        .width(200)
        .height(100)
        .backgroundColor(Color.Blue)
        .textAlign(TextAlign.Center)
        .margin({ bottom: 20 })

      // 旋转手势
      Text('旋转手势')
        .fontSize(20)
        .rotate({ angle: this.angleValue })
        .gesture(
          RotationGesture()
            .onActionStart(() => {
              console.log('旋转开始');
            })
            .onActionUpdate((event: RotationGestureEvent) => {
              this.angleValue = event.angle;
            })
            .onActionEnd(() => {
              console.log('旋转结束');
            })
        )
        .width(200)
        .height(100)
        .backgroundColor(Color.Green)
        .textAlign(TextAlign.Center)
        .margin({ bottom: 20 })

      // 长按手势
      Text('长按手势')
        .fontSize(20)
        .gesture(
          LongPressGesture({ repeat: false })
            .onAction(() => {
              this.message = '长按了文本';
            })
        )
        .width(200)
        .height(100)
        .backgroundColor(Color.Yellow)
        .textAlign(TextAlign.Center)
        .margin({ bottom: 20 })

      // 点击手势
      Text('点击手势')
        .fontSize(20)
        .gesture(
          TapGesture()
            .onAction(() => {
              this.message = '点击了文本';
            })
        )
        .width(200)
        .height(100)
        .backgroundColor(Color.Orange)
        .textAlign(TextAlign.Center)
        .margin({ bottom: 20 })

      // 拖拽手势
      Text('拖拽手势')
        .fontSize(20)
        .gesture(
          PanGesture()
            .onActionStart(() => {
              console.log('拖拽开始');
            })
            .onActionUpdate((event: PanGestureEvent) => {
              console.log(`拖拽偏移: x=${event.offsetX}, y=${event.offsetY}`);
            })
            .onActionEnd(() => {
              console.log('拖拽结束');
            })
        )
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
        .textAlign(TextAlign.Center)
        .margin({ bottom: 20 })

      // 重置按钮
      Button('重置手势状态')
        .onClick(() => {
          this.scaleValue = 1.0;
          this.angleValue = 0;
          this.message = '手势页面';
        })
        .width('80%')
        .height(50)
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
    .justifyContent(FlexAlign.Center)
    .padding(20)
  }
}