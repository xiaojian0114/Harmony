@Entry
@Component
struct SlidingTodoCard {
  @State isExpanded: boolean = false
  // 固定值：收起状态（屏幕正下方）
  private collapsedBottom: number = 0
  private collapsedHeight: number = 60
  // 固定值：展开状态（屏幕中间）
  private expandedBottom: number = 300
  private expandedHeight: number = 200
  // 待办任务
  private todos: string[] = [
    "完成鸿蒙动画练习",
    "准备项目会议材料",
    "回复客户邮件"
  ]

  build() {

    Stack() {

      Column()
        .width('100%')
        .height('100%')
        .backgroundColor('#f5f5f5')


      Text('待办卡片演示')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .position({ top: 30 })


      Column() {
        Text('今日待办')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .padding(16)

        if (this.isExpanded) {
          Column() {
            ForEach(this.todos, (todo: string, index: number) => {
              Text(`${index + 1}. ${todo}`)
                .fontSize(16)
                .padding({ left: 16, bottom: 12 })
            })
          }
        }
      }
      .width('90%')
      .height(this.isExpanded ? this.expandedHeight : this.collapsedHeight)
      .backgroundColor('#e0e0e0')
      .borderRadius(12)
      .shadow({ radius: 8, color: '#00000010' })

      .position({
        bottom: this.isExpanded ? this.expandedBottom : this.collapsedBottom,
        left: '5%'
      })
      .onClick(() => {
        this.isExpanded = !this.isExpanded
      })
      .animation({
        duration: 800,
        curve: Curve.EaseInOut
      })
    }
    .width('100%')
    .height('100%')
  }
}
