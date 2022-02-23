//
//  OtherListView.swift
//  Cafe
//
//  Created by yc on 2022/02/21.
//

import SwiftUI

struct OtherListView: View {
    
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }
    
    var body: some View {
        List {
            ForEach(Menu.allCases) { section in
                Section(header: Text(section.title)) {
                    ForEach(section.menu, id: \.hashValue) { row in
                        Text(row)
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
    
    }
}

struct OtherListView_Previews: PreviewProvider {
    static var previews: some View {
        OtherListView()
    }
}
