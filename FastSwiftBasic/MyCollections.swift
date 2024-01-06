//
//  MyCollections.swift
//  FastSwiftBasic
//
//  Created by Dyani on 12/21/23.
//

import SwiftUI

struct MyCollections: View {
    
    var foods: [String] = ["eggs", "bananas", "beans"] //array<String>으로 쓸수있지만 안씀
    
    var jazzs: Set<String> = ["bibidudu", "labdap", "dididudu"]
    var hiphop: Set<String> = ["labdap", "rap", "wow"]
    
    var koEngDict = ["사과":"apple"]
    
    
    
    var body: some View {
        VStack {
            
            Text(hiphop.intersection(jazzs).description) //["labdap"]
            
            Button(action: {
                let intersectionMusic = hiphop.intersection(jazzs) //hiphop과 jazzs교집합
                intersectionMusic.description
            }, label: {
                Text("hit!")
            })
            
            
            Text(foods[2]) //beans
            
            Text(koEngDict["사과"]!) //apple


        }
    }
}

#Preview {
    MyCollections()
}
