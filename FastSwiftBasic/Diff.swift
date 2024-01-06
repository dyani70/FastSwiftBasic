//
//  Diff.swift
//  FastSwiftBasic
//
//  Created by Dyani on 1/1/24.
//

import SwiftUI

struct Diff: View {
    
    let myCar = Car(name: "댜니카", owner: "댜니")
    @ObservedObject var myKar = Kar(name: "댜니카2", owner: "댜니2")
    @State var name: String = "" //구조체가 새로 만들어질때 초기화되지 않고 다른곳에 잘 저장되있다 불려와짐
    
    var body: some View {
        VStack{
            Text("\(myKar.name)의 주인은 \(myKar.owner)입니다")
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)
            
            Button {
                
                let broCar = myKar
                broCar.name = "동생차"
                broCar.owner = "동생"
                
                myKar.seyHi()
            } label: {
                Text("출발")
            }
        }
    }
}

struct Car {
    let name: String
    let owner: String
    
    func seyHi() {
        print("hi \(owner)")
    }
}

class Kar: ObservableObject { //관찰당하는 오브젝트
    @Published var name: String //name이 바뀔때 배포(publish)
    var owner: String
    
    func seyHi() {
        print("hi \(owner)")
    }
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}

#Preview {
    Diff()
}
