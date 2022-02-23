//
//  HomeView.swift
//  Cafe
//
//  Created by yc on 2022/02/21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeeMenu)
            Spacer(minLength: 32.0)
            EventSectionView(events: $viewModel.events)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
