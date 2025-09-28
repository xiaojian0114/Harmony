import { router } from '@kit.ArkUI'

@Component
export struct BackArrow {
  onBackAction: () => void = () => {

    router.replaceUrl({
      url: 'src/main/ets/pages/Index.ets'
    }).catch((err: Error) => {
      console.error('返回首页失败:', err.message)
    })
  }

  build() {
    Button($r('app.media.back'))
      .width(40)
      .height(40)
      .margin({ left: 6, top: 12 })
      .backgroundColor('RED')
      .onClick(() => {
        this.onBackAction()
      })
  }
}
