//
//  OtherView.swift
//  Cafe
//
//  Created by yc on 2022/02/21.
//

import SwiftUI

struct OtherView: View {
    var body: some View {
        NavigationView {
            OtherListView()
                .navigationTitle("Other")
                .toolbar {
                    NavigationLink(destination: SettingView()) {
                        Image(systemName: "gear")
                    }
                }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
