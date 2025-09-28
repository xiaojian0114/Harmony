@Entry
@Component
struct ExplictAnimationNoCirclePage {
  @State isMoved: boolean = false
  @State rotateAngle: number = 0
  @State isBeating: boolean = false
  @State sizeScale: number = 1
  @State _scale: number = 1

  build() {
    Navigation() {
      Column({ space: 16 }) {
        Text('显式动画演示')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)

        Button('改变位置').onClick(() => {
          this.isMoved = !this.isMoved
        })

        Rect({ width: 60, height: 60 })
          .fill(this.isMoved ? "#ff9f088b" : "#ff1952b3")
          .translate({ x: 0, y: this.isMoved ? 200 : 0 })

          .animation({
            duration: 1000,
            curve: Curve.Smooth   //缓动函数
          })


        Button('角度变化').onClick(() => {
          this.rotateAngle = 100

        })
          .margin(50)
          .rotate({ angle: this.rotateAngle })
          .animation({
            duration: 1200,
            curve: Curve.Friction,
            delay: 500,
            iterations: -1,
            playMode: PlayMode.Alternate,
            expectedFrameRateRange: {
              min: 60,
              max: 120,
              expected: 90
            }
          })

        // Button('❤️ 心跳按钮')
        //   .onClick(() => {
        //     this.isBeating = !this.isBeating
        //     // setTimeout(() => {
        //     //   this.isBeating = false
        //     // }, 800)
        //   })
        //   .fontSize(16)
        //   .padding({
        //     left: 20,
        //     right: 20,
        //     top: 10,
        //     bottom: 10
        //   })
        //   .backgroundColor("#ff4d6d")
        //   .borderRadius(20)
        //
        //   .scale({ x: this.isBeating ? 1.3 : 1, y: this.isBeating ? 1.2 : 1 })
        //   .animation({
        //     duration: 800,
        //
        //     curve: Curve.Friction,
        //     iterations: -1,
        //     expectedFrameRateRange: {
        //       min: 60,
        //       max: 120,
        //       expected: 90
        //     }
        //   })

        Text('心跳动画示例')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .padding(10)
        Image($r('app.media.heart'))
          .width(100)
          .height(100)
          .scale({ x: this._scale, y: this._scale })
          .animation({
            duration: 1000,
            curve: Curve.Friction, // 阻尼动画，先快后慢，模拟摩擦减速
            delay: 500, // 动画延迟 500ms 开始
            iterations: -1, // 无限循环
            playMode: PlayMode.Alternate, // 交替播放：放大 → 缩小 → 放大...
            expectedFrameRateRange: {
              min: 20, // 最低帧率 20fps（保证低端设备不卡死）
              max: 120, // 最高帧率 120fps（支持高刷屏）
              expected: 90 // 期望运行在 90fps 左右
            }
          })
          .onAppear(() => {
            // 出现后触发动画：切换状态
            setInterval(() => {
              this._scale = this._scale === 1 ? 1.3 : 1
            }, 1200)
          })


      }
      .padding(16)
    }
    .title("显式动画")
    .titleMode(NavigationTitleMode.Mini)
    .hideNavBar(false)
    .navBarWidth('100%')
    .navBarPosition(NavBarPosition.Start)

  }
}