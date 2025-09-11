import { UserInfo } from "../model/UserInfo"
import pasteboard from "@ohos.pasteboard"

@Component
@Preview
export struct UserProfile {
  @State clicked: boolean = true
  @State userInfo: UserInfo = {

    id: 1,
    name: '况智宇',
    age: 18,
    avatar: $r('app.media.kuang'),
    active: true

  }

  build() {
    Column() {
      Image(this.userInfo.avatar)
        .width(80)
        .height(80)
        .borderRadius(40)
      Text(`姓名：${this.userInfo.name}`).fontSize(28)

        .ellipsisMode(EllipsisMode.END)
        .onClick(() => {
          let pasteData: pasteboard.PasteData = pasteboard.createData(pasteboard.MIMETYPE_TEXT_PLAIN, 'content')
          let systemPasteboard: pasteboard.SystemPasteboard = pasteboard.getSystemPasteboard()
          systemPasteboard.setData(pasteData, (err, data) => {

          })
        })


      Text(`年龄：${this.userInfo.age}`).fontSize(26)
      if (this.userInfo.email) {
        Text(`邮箱:${this.userInfo.email}`).fontSize(26)
      }

      Button(this.userInfo.active ? '禁用用户' : '启用用户')
        .onClick(() => {
          this.userInfo.active = !this.userInfo.active

        }).backgroundColor(this.userInfo.active ? 'red' : 'blue')
    }
  }
}