//
//  User.swift
//  Cafe
//
//  Created by yc on 2022/02/21.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "영찬", account: "yc1303@naver.com")
}
