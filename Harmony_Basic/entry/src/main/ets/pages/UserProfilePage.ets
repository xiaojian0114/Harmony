import { BackArrow } from '../components/BackArrow';
import { UserProfile } from '../components/UserProfile';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct UserProfilePage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      BackArrow({
        onBackAction: () => router.back()
      })
      UserProfile()


    }.justifyContent(FlexAlign.Center)
  }
}