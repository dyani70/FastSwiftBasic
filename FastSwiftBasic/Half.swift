//
//  Half.swift
//  FastSwiftBasic
//
//  Created by Dyani on 1/1/24.
//

import SwiftUI

struct Half: View {
    
    var name: String = "Dyani"
    var age: Int = 20
    
    var names: [String] = ["남준", "석진", "윤기", "호석", "지민", "태형", "정국"]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(name)입니다")
                Image(systemName: "pencil")
            }
        }
        
        Text("안녕하세요 \(age)살의 \(name)!")
        
        List {
            ForEach(names, id: \.self) { name in 
                let welcome = sayHi(to: name)
                if name == "윤기" {
                    Text("기다렸어요. \(welcome)")
                } else {
                    Text(welcome)
                }
            }
        }
    }
    
    func sayHi(to name: String) -> String {
        return "\(name)님 반갑습니다."
    }
    
   
}

#Preview {
    Half()
}
