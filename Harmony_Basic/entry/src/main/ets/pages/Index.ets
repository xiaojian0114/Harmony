import { router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  build() {
    Column() {
      // 替换原有组件为导航按钮
      Button('用户列表')
        .width('80%')
        .margin(10)
        .backgroundColor('#409EFF')
        .onClick(() => {
          router.pushUrl({ url: 'pages/UserListPage' })
        })


      Button('用户资料')
        .width('80%')
        .margin(10)
        .backgroundColor('#67C23A')
        .onClick(() => {
          router.pushUrl({ url: 'pages/UserProfilePage' })
        })
    }.justifyContent(FlexAlign.Center)
  }
}