//
//  EventSectionView.swift
//  Cafe
//
//  Created by yc on 2022/02/21.
//

import SwiftUI

struct EventSectionView: View {
    
    @Binding var events: [Event]
    
    var body: some View {
        VStack {
            HStack {
                Text("Events")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button(action: {}) {
                    Text("See all")
                        .font(.subheadline)
                }
            }
            .padding(.horizontal, 16.0)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16.0) {
//                    ForEach(Event.sample) { event in
                    ForEach(events) { event in
                        EventSectionItemView(event: event)
                    }
                }
//                .frame(maxWidth: .infinity, minHeight: 220, maxHeight: .infinity)
                .padding(.horizontal, 16.0)
            }
        }
    }
}

struct EventSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150.0)
                .clipped()
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .frame(width: UIScreen.main.bounds.width - 32.0)
    }
}
