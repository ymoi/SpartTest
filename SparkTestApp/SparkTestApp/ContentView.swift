//
//  ContentView.swift
//  SparkTestApp
//
//  Created by Yurii Moisieienko on 19.05.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ScrollView(.horizontal) {
            HStack(alignment: .center) {
                    ForEach(0...9, id: \.self) {_ in
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 100)
                    }
                }
        }.frame(height: 150)
    }
}


#Preview {
    ContentView()
}
