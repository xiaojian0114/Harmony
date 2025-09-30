import { GradeQueryPage } from '../components/GradeQueryPage'
import { IndexPage } from '../components/IndexPage'
import { PersonalInfoPage } from '../components/PersonalInfoPage'
import { SchedulePage } from '../components/SchedulePage'


@Entry
@Component
struct TabsPage {

  @State currentIndex: number = 0

  private tabsController: TabsController = new TabsController()

  @Builder TabBuilder(title:string,targetIndex:number,normalImg:Resource,selectedImg:Resource){
    Column(){
      Image(this.currentIndex==targetIndex?selectedImg:normalImg)
        .width(28)
        .height(28)
      Text(title)
        .fontSize(14)
        .margin({top:4})
        .fontColor(this.currentIndex==targetIndex?'#45C461':'#999999')
    }
    .backgroundColor("#ffffff")
    .width('100%')
    .height(60)
    .justifyContent(FlexAlign.Center)
    .onClick(()=>{
      this.currentIndex=targetIndex
      this.tabsController.changeIndex(this.currentIndex)
    })
  }

  build() {
    Column() {
      Tabs({barPosition:BarPosition.End,controller:this.tabsController,index:0}){
        TabContent(){
          IndexPage()
        }.tabBar(this.TabBuilder('校园服务',0,$r("app.media.foreground"),$r("app.media.foreground")))

        TabContent(){
          SchedulePage()
        }.tabBar(this.TabBuilder('日程安排',1,$r("app.media.foreground"),$r("app.media.foreground")))

        TabContent(){
          GradeQueryPage()
        }.tabBar(this.TabBuilder('成绩查询',2,$r("app.media.foreground"),$r("app.media.foreground")))

        TabContent(){
          PersonalInfoPage()
        }.tabBar(this.TabBuilder('个人信息',3,$r("app.media.foreground"),$r("app.media.foreground")))
      }
      .scrollable(false)
      .animationDuration(0)
    }
    .backgroundColor("#eeeeee")
    .width('100%')
    .height('100%')
  }
}
