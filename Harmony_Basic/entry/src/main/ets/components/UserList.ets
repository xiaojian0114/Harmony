import { UserInfo } from "../model/UserInfo"
import { UserProfile } from "./UserProfile"

@Component
@Preview
export struct UserList {
  @State userList: UserInfo[] = [
    {
      id: 1,
      name: '况智宇',
      age: 18,
      avatar: $r('app.media.kuang'),
      active: true
    },
    {
      id: 2,
      name: '况小宇',
      age: 17,
      avatar: $r('app.media.kuang'),
      active: true
    },
    {
      id: 3,
      name: '况大宇',
      age: 19,
      avatar: $r('app.media.kuang'),
      active: true
    },
  {
  id: 3,
  name: '况大宇',
  age: 19,
  avatar: $r('app.media.kuang'),
  active: true
},
{
  id: 4,
  name: '况中宇6666666666666666666666666666666666666666666666666666666666',
age: 19,
avatar: $r('app.media.kuang'),
active: true
},
{
  id: 5,
  name: '况宇',
age: 19,
avatar: $r('app.media.kuang'),
active: true
}
  ]

  build() {

      Column({ space: 10 }) {
        Text("用户列表")
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 20 })

        List({ space: 15 }) {
          ForEach(this.userList, (user: UserInfo) => {
            ListItem() {

              UserProfile({ userInfo: user })
            }
          })
        }
        .width('100%')
        .padding({ left: 15, right: 15 })
      }.justifyContent(FlexAlign.Center)
      .width('100%')
      .height('100%')

  }
}