@Preview
@Component
export struct IndexPage {
  @State services: Array<string> = ["食堂", "体育馆", "教室", "图书馆"]
  @State Convenient: Array<string> = ["快递", "外卖", "周边"]
  @State serviceIcons: Record<string, Resource> = {
    '食堂': $r("app.media.index_canteen"),
    '体育馆': $r("app.media.index_gymnasium"),
    '教室': $r("app.media.index_classroom"),
    '图书馆': $r("app.media.index_library")
  }

  build() {
    Column({ space: 10 }) {

      Text("服务")
        .fontSize(30)
        .fontWeight(FontWeight.Bold)

      Grid() {
        ForEach(this.services, (service: string) => {
          GridItem() {
            Column({ space: 5 }) {
              Image(this.serviceIcons[service])
                .width(40)
                .height(40)

              Text(service)
            }
            .alignItems(HorizontalAlign.Center)

          }
        }, (service: string): string => service
        )
      }
      .rowsTemplate(('1fr 1fr') as string)
      .columnsTemplate(('1fr 1fr') as string)
      .height(200)

      Grid() {
        ForEach(this.Convenient, (convenient: string, index) => {
          GridItem() {
            Text(convenient)
          }
          .width('25%')
        }, (convenient: string): string => convenient)

      }.rowsTemplate('1fr')
      .columnsTemplate('1fr 1fr 1fr')
      .height(100)
      .rowsGap(15)
    }
    .height('100%')
    .width('100%')
  }
}