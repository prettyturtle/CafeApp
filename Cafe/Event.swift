//
//  Event.swift
//  Cafe
//
//  Created by yc on 2022/02/21.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID().uuidString
    
    let image: Image
    let title: String
    let description: String
}
