//
//  ContentView.swift
//  SparkTestApp
//
//  Created by Yurii Moisieienko on 19.05.2025.
//

import SwiftUI

struct ContentView: View {

    @State var numberOfItems: Int = 0
    @State var scrollPosition: ScrollPosition = .init(id: 0)
    var body: some View {
        VStack {

            ScrollView(.horizontal) {
                    HStack(alignment: .center) {
                        ForEach(0..<numberOfItems, id: \.self) {i in
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 100, height: 100)
                                .id(i)
                        }
                    }
                    .scrollTargetLayout()
            }
            .frame(height: 150)
            .background(Color.yellow)
            .scrollPosition($scrollPosition)

            Button("Add Item") {
                numberOfItems += 1
                withAnimation {
                    scrollPosition = .init(id: (numberOfItems-1))
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
