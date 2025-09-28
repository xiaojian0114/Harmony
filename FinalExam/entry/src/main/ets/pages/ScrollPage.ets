import router from '@ohos.router';

@Entry
@Component
export struct ScrollPage {
  @State scrollOffset: number = 0;
  @State items: Array<number> = [];
  private scroller: Scroller = new Scroller();

  aboutToAppear(): void {
    // 初始化数据
    const tempArray: Array<number> = [];
    for (let i: number = 0; i < 50; i++) {
      tempArray.push(i + 1);
    }
    this.items = tempArray;
  }

  build(): void {
    Column() {
      Text('滚动组件示例')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })

      Text(`滚动位置: ${this.scrollOffset}`)
        .fontSize(14)
        .fontColor(Color.Gray)
        .margin({ bottom: 10 })

      // 垂直滚动 - 避免使用 ForEach
      Scroll(this.scroller) {
        Column() {
          // 使用 @Builder 方法创建所有列表项
          this.BuildListItems()
        }
        .width('100%')
      }
      .width('100%')
      .height('70%')
      .onScroll((xOffset: number, yOffset: number) => {
        this.scrollOffset = yOffset;
      })
      .onScrollEdge((side: Edge) => {
        console.log(`滚动到边界: ${side}`);
      })
      .scrollBar(BarState.On)

      // 操作按钮
      Row({ space: 10 }) {
        Button('滚动到顶部')
          .onClick(() => {
            this.scroller.scrollToIndex(0);
          })
          .flexGrow(1)
          .height(45)

        Button('滚动到底部')
          .onClick(() => {
            this.scroller.scrollToIndex(this.items.length - 1);
          })
          .flexGrow(1)
          .height(45)

        Button('添加项目')
          .onClick(() => {
            const newItem: number = this.items.length + 1;
            const newItems: Array<number> = [...this.items];
            newItems.push(newItem);
            this.items = newItems;
          })
          .flexGrow(1)
          .height(45)
      }
      .width('100%')
      .margin({ top: 10 })

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
    .padding(10)
    .backgroundColor('#F5F5F5')
  }

  // 构建所有列表项
  @Builder
  BuildListItems(): void {
    ForEach(
      this.items,
      (item: number, index: number) => {
        this.ListItem(item, index);
      },
      (item: number, index: number): string => {
        return `item-${item}-${index}`;
      }
    )
  }

  // 单个列表项
  @Builder
  ListItem(item: number, index: number): void {
    Row() {
      Text(`列表项 ${item}`)
        .fontSize(18)
        .fontWeight(FontWeight.Medium)

      Blank()

      Text(`索引: ${index}`)
        .fontSize(14)
        .fontColor(Color.Gray)
    }
    .width('100%')
    .padding(20)
    .backgroundColor(item % 2 === 0 ? '#FFFFFF' : '#F8F8F8')
    .borderRadius(8)
    .margin({ bottom: 5 })
  }
}