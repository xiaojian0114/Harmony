@Entry
@Component
struct ExplictAnimationPage {
  @State isMoved: boolean = false
  @State rotateAngle: number = 0

  build() {
    Navigation() {
      Column({ space: 16 }) {
        Text('显式动画演示')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)

        Button('改变位置').onClick(() => {
          this.isMoved = !this.isMoved
        })

        Circle({ width: 60, height: 60 })
          .fill("#ff4fa9e3")
          .translate({ x: this.isMoved ? 100 : 0, y: 0 })
          .animation({
            duration: 1000,
            curve: Curve.Smooth   //缓动函数
          })


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