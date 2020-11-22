//
//  SchedulerListItemView.swift
//  SwiftUITodoList
//
//  Created by 김상민 on 2020/11/22.
//

import SwiftUI

class SchedulerListItemViewModel: ObservableObject {
    @Published var title: String
    @Published var dueDate: String
    @Published var isMarked: Bool = false
    
    init(title: String,
         dueDate: String,
         isMarked: Bool) {
        self.title = title
        self.dueDate = dueDate
        self.isMarked = isMarked
    }
    
    func update(title: String) {
        self.title = title
    }
    
    func update(dueDate: String) {
        self.dueDate = dueDate
    }
    
    func update(isMarked: Bool) {
        self.isMarked = isMarked
    }
}

struct SchedulerListItemView: View {
    @ObservedObject var viewModel: SchedulerListItemViewModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 10, content: {
            Button(action: updateButtonMarked, label: {
                let imageName: String = viewModel.isMarked ? "largecircle.fill.circle" :
                    "circle"
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 20, height: 20)
            }).padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(viewModel.title)
            Text(viewModel.dueDate)
                .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Spacer()
        })
    }
    
    func updateButtonMarked() {
        let updateMarkedStatus: Bool = !viewModel.isMarked
        viewModel.update(isMarked: updateMarkedStatus)
    }
}

struct SchedulerListItemView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SchedulerListItemViewModel(title: "ToDo", dueDate: "2020.11.28", isMarked: false)
        SchedulerListItemView(viewModel: viewModel)
    }
}
