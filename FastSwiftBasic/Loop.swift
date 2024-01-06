//
//  Loop.swift
//  FastSwiftBasic
//
//  Created by Dyani on 12/28/23.
//



import SwiftUI

/**
 반복문 forEach
 > forEach(데이터, 식별값) {item in
 Code
 }
*/
struct Loop: View {
    
    let names: [String] = ["남준", "석진", "윤기", "호석", "지민", "태형", "정국"]
    var body: some View {
        
        VStack {
            ForEach(names, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    Loop()
}
