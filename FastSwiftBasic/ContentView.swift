//
//  ContentView.swift
//  FastSwiftBasic
//
//  Created by Dyani on 2023/12/18.
//

import SwiftUI

struct ContentView: View {
    
    var name: String = "다은"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(name)님 안녕하세요!")
            Text("\(name)님 화이팅화이팅")
            Text(name)
            Text(name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
