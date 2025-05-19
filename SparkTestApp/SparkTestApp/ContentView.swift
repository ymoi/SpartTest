//
//  ContentView.swift
//  SparkTestApp
//
//  Created by Yurii Moisieienko on 19.05.2025.
//

import SwiftUI

struct ContentView: View {

    @State var items: [Int] = []
    @State var scrollPosition: ScrollPosition = .init(id: 0)
    var body: some View {
        VStack {

            ScrollView(.horizontal) {
                    HStack(alignment: .center) {

                        ForEach(items, id: \.self) { item in
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 100, height: 100)
                                .id(item)
                                .onTapGesture {
                                    withAnimation {
                                        let idx = items.firstIndex(where: { $0 == item}) ?? 0
                                        items.remove(at: idx)
                                    }
                                }
                        }
                    }
                    .scrollTargetLayout()
            }
            .frame(height: 150)
            .background(Color.yellow)
            .scrollPosition($scrollPosition)

            Button("Add Item") {
                items.append(items.count)
                withAnimation {
                    scrollPosition = .init(id: (items.count-1))
                }
            }
            .frame(width: 100, height: 100)
            .background(Color.blue.opacity(0.3))
        }
    }
}


#Preview {
    ContentView()
}
