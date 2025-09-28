@Component
@Preview
export struct GridDemo {
  @State assignments: Assignment[] = [
    { title: '数学作业', deadline: '2025-09-15', status: 'pending' },
    { title: 'Java编程', deadline: '2025-09-16', status: 'completed' },
    { title: '英语作文', deadline: '2025-09-17', status: 'pending' },
    { title: '物理实验', deadline: '2025-09-18', status: 'overdue' },
    { title: '化学报告', deadline: '2025-09-19', status: 'pending' },
    { title: '历史论文', deadline: '2025-09-20', status: 'completed' }
  ];

  build() {
    Grid() {
      ForEach(this.assignments, (assignment: Assignment) => {
        GridItem() {
          Column({ space: 10 }) {

            //作业标题
            Text(assignment.title).fontSize(16)

            //作业状态图标
            Text(this.getIconByStatus(assignment.status)).fontSize(24)
            Text(assignment.status).fontColor(this.getColorByStatus(assignment.status)).fontSize(24)

            //截止时间
            Text(assignment.deadline).fontSize(12)
          }

        }

      })
    }
    .columnsTemplate('1fr 1fr')
    .rowsTemplate('auto auto auto')
    .columnsGap(16)
    .width('100%')
    .rowsGap(16)
    .padding(16)
  }

  getIconByStatus(status: string): string {
    switch (status) {
      case 'completed':
        return '✅';
      case 'pending':
        return '📝';
      case 'overdue':
        return '⚠️';
      default:
        return '📋';
    }
  }

  getColorByStatus(status: string): string {
    switch (status) {
      case 'completed':
        return '#33FF33';
      case 'pending':
        return '#3333FF';
      case 'overdue':
        return '#FF0000';
      default:
        return '#333';
    }
  }
}


interface Assignment {
  title: string;
  deadline: string;
  status: 'pending' | 'completed' | 'overdue';
}