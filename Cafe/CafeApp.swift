//
//  CafeApp.swift
//  Cafe
//
//  Created by yc on 2021/12/26.
//

import SwiftUI

@main
struct CafeApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .accentColor(.green)
        }
    }
}
