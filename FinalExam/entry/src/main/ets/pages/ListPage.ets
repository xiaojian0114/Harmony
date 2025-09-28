import router from '@ohos.router';

@Entry
@Component
export struct ListPage {
  @State listData: string[] = [
    '项目 1',
    '项目 2',
    '项目 3',
    '项目 4',
    '项目 5',
    '项目 6',
    '项目 7',
    '项目 8',
    '项目 9',
    '项目 10'
  ];

  build() {
    Column() {
      Text('列表组件示例')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })

      // 基础列表
      List({ space: 10, initialIndex: 0 }) {
        ForEach(this.listData, (item: string, index: number) => {
          ListItem() {
            Row() {
              Text(`${index + 1}. ${item}`)
                .fontSize(18)
                .fontWeight(FontWeight.Medium)

              Blank()

              Text('>')
                .fontSize(16)
                .fontColor(Color.Gray)
            }
            .width('100%')
            .padding(15)
            .backgroundColor(Color.White)
            .borderRadius(8)
            .shadow({
              radius: 2,
              color: '#00000010',
              offsetX: 1,
              offsetY: 1
            })
          }
        }, (item: string) => item)
      }
      .width('100%')
      .height('80%')
      .padding(10)
      .backgroundColor('#F5F5F5')

      // 操作按钮
      Row({ space: 10 }) {
        Button('添加项目')
          .onClick(() => {
            this.listData.push(`项目 ${this.listData.length + 1}`);
            this.listData = [...this.listData];
          })
          .flexGrow(1)
          .height(45)

        Button('删除最后')
          .onClick(() => {
            if (this.listData.length > 0) {
              this.listData.pop();
              this.listData = [...this.listData];
            }
          })
          .flexGrow(1)
          .height(45)
      }
      .width('100%')
      .margin({ top: 10 })

      Button('返回')
        .onClick(() => {
          router.back();
        })
        .width('80%')
        .height(50)
        .margin({ top: 10, bottom: 20 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }
}