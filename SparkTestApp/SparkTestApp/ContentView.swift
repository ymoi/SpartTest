//
//  ContentView.swift
//  SparkTestApp
//
//  Created by Yurii Moisieienko on 19.05.2025.
//

import SwiftUI

struct ContentView: View {

    @State var numberOfItems: Int = 0
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack(alignment: .center) {
                    ForEach(0..<numberOfItems, id: \.self) {_ in
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 100)
                    }
                }
            }
            .frame(height: 150)
            .background(Color.yellow)

            Button("Add Item") {
                numberOfItems += 1
            }.frame(width: 100, height: 100)
            .background(Color.blue.opacity(0.3))
        }
    }
}


#Preview {
    ContentView()
}
