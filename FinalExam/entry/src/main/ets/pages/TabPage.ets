import { IndexPage } from '../tabs/IndexPage'
import { MyPage } from '../tabs/MyPage'

@Entry
@Component
struct TabsPage {
  @State currentIndex: number = 0
  private tabsController: TabsController = new TabsController()

  @Builder
  TabBuilder(title: string, targetIndex: number, normalImg: Resource, selectedImg: Resource) {
    Column() {
      Image(this.currentIndex == targetIndex ? selectedImg : normalImg)
        .width(28)
        .height(28)
      Text(title)
        .fontSize(14)
        .margin({ top: 4 })
        .fontColor(this.currentIndex == targetIndex ? '#45C461' : '#999999')
    }
    .backgroundColor("#ffffff")
    .width('100%')
    .height(60)
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = targetIndex
      this.tabsController.changeIndex(this.currentIndex)
    })
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.tabsController, index: 0 }) {
        TabContent() {
          IndexPage()
        }.tabBar(this.TabBuilder('分类', 0, $r("app.media.index"), $r("app.media.index_selected")))

        TabContent() {
          MyPage()
        }.tabBar(this.TabBuilder('购物车', 1, $r("app.media.my"), $r("app.media.my_selected")))

      }
      .scrollable(false)
      .animationDuration(0)
    }
    .backgroundColor("#eeeeee")
    .width('100%')
    .height('100%')
  }
}
