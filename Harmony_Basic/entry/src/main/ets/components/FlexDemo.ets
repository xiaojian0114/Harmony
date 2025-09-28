@Component
@Preview
export struct FlexDemo {
  @State skills: string[] = ['c语言', 'java', 'Vue', 'React', 'Python']

  build() {
    Flex({
      direction: FlexDirection.Row,
      wrap: FlexWrap.Wrap,
      justifyContent: FlexAlign.Start //左对齐
    }) {

      ForEach(this.skills, (skill: string, index: number) => {
        Text(skill)
          .fontSize(14)
          .fontColor('#ff0a87c1')
          .backgroundColor('')
          .padding({
            left: 12,
            right: 12,
            top: 4,
            bottom: 4
          })
          .borderRadius(12)
          .margin({ right: 8, bottom: 8 })
      })

    }
  }
}