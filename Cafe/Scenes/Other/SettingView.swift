//
//  SettingView.swift
//  Cafe
//
//  Created by yc on 2022/02/22.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                SettingUserInfoSectionView()
            }
            
            Button("회원 정보 수정") {}
                .tint(.primary)
            Button("회원 탈퇴") {}
                .tint(.primary)
        }
        .listStyle(.grouped)
        .navigationTitle("설정")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(User.shared.username)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }
            Spacer()
            Button(action: { print("로그아웃") }) {
                Text("로그아웃")
                    .tint(.green)
                    .font(.system(size: 14.0, weight: .bold, design: .default))
            }
            .padding(8.0)
            .overlay(Capsule().stroke(.green))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
