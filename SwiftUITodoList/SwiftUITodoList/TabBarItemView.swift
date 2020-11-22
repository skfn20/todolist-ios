//
//  TabBarItemView.swift
//  SwiftUITodoList
//
//  Created by 김상민 on 2020/11/22.
//

import SwiftUI

struct TabBarItemView: View {
    enum ItemType {
        case calendar
        case todo
        case ongoing
        case done
    }
    
    let type: ItemType
    
    private var imageName: String {
        switch type {
        case .calendar:
            return "calendar"
        case .todo:
            return "checkmark.square"
        case .ongoing:
            return "hourglass"
        case .done:
            return "checkmark.square.fill"
        }
    }
    
    private var titleName: String {
        switch type {
        case .calendar:
            return "Calendar"
        case .todo:
            return "To Do"
        case .ongoing:
            return "On Going"
        case .done:
            return "Done"
        }
    }
    
    //private var title: String?
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
            Image(systemName: imageName)
            Text(titleName)
        })
    }
}

struct TabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItemView(type: .calendar)
    }
}
