import { ColumnDemo } from '../components/ColumnDemo';
import { FlexDemo } from '../components/FlexDemo';
import { GridDemo } from '../components/GirdDemo';
import { RowDemo } from '../components/RowDemo';
import { StackDemo } from '../components/StackDemo';


@Entry
@Component
struct ViewPage {
  @State message: string = 'Hello World';

  build() {
    Scroll() {
      Column({ space: 30 }) {
        // RowDemo()
        // ColumnDemo()
        // FlexDemo()
        GridDemo()
        StackDemo()
      }.width('100%')
    }.scrollable(ScrollDirection.Vertical)
    .scrollBar(BarState.Auto)
  }
}