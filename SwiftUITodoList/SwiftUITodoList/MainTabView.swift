//
//  MainTabView.swift
//  SwiftUITodoList
//
//  Created by 김상민 on 2020/11/22.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        let viewModel = SchedulerListItemViewModel(title: "ToDoList", dueDate: "2020.11.31", isMarked: false)
        TabView {
            Text("The content of the first View")
                .tabItem {
                    TabBarItemView(type: .calendar)
                }
            SchedulerListItemView(viewModel: viewModel)
                .tabItem {
                    TabBarItemView(type: .todo)
                }
            Text("The content of the third View")
                .tabItem {
                    TabBarItemView(type: .ongoing)
                }
            Text("The content of the fourth View")
                .tabItem {
                    TabBarItemView(type: .done)
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
