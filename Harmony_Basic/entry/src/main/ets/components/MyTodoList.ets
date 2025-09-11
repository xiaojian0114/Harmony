import { TodoList } from "../model/TodoList"

@Component
@Preview

export struct MyTodoList {

  @State todoList: TodoList = {
    id: 1,
    name: '睡觉',
    type: '紧急',
    isSucceed: false

  }

  build() {
    Column(){
      List(){
        ListItem(){
          Text(`序号:${this.todoList.id}`).fontSize(24)
        }
        ListItem(){
          Text(`事件名称:${this.todoList.name}`).fontSize(24)
        }
        ListItem(){
          Text(`事件类型:${this.todoList.type}`).fontSize(24)
        }
        ListItem(){
          Text(`是否完成:${this.todoList.isSucceed ? "未完成" : "已完成"}`).fontSize(24)
        }
      }
    }

  }
}
