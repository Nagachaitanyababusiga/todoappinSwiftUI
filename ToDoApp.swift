//
//  ToDoApp.swift
//  SwiftUIPractice
//
//  Created by user2 on 07/12/25.
//

import SwiftUI
internal import Combine


class ToDoList: ObservableObject{
    @Published var todos: [String] = ["Eat","Code","Sleep"]
    
    func addTodo(_ task: String){
        todos.append(task)
    }
}


//parent
struct ToDoApp: View{
    @StateObject var todolist = ToDoList()
    var body: some View{
        VStack{
            TextInputBlock(vm: todolist)
            List(todolist.todos, id: \.self){ todo in
                Text(todo)
            }
        }
    }
}

//child ui component
struct TextInputBlock: View {
    @ObservedObject var vm: ToDoList
    @State var text: String = ""
    var body: some View {
        HStack{
            TextField("Enter a task to complete",text: $text)
            Button("Add task"){
                vm.addTodo(text)
            }
        }
    }
}


#Preview {
    ToDoApp()
}
