import { UserList } from '../components/UserList';
import { router } from '@kit.ArkUI';
import { BackArrow } from '../components/BackArrow';

@Entry
@Component
struct UserListPage {
  @State message: string = 'Hello World';

  build() {


    Column({ space: 10 }) {
      BackArrow({
        onBackAction: () => router.back()
      })


      UserList()

    }.justifyContent(FlexAlign.Center)

  }
}