
@Component
@Preview
export struct MyButton {

  @Prop message1: string = '上线'
  @Prop message2: string = '离线'

  build() {
    Row({space : 10}) {
      Button(this.message1)
        .type(ButtonType.Capsule)
        .backgroundColor('#50AEB6')


      Button(this.message2)
        .type(ButtonType.Capsule)
        .backgroundColor('#ff82d4db')



    }
  }

}