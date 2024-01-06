//
//  Elevator.swift
//  FastSwiftBasic
//
//  Created by Dyani on 1/1/24.
//

import SwiftUI

struct Elevator: View {
        
    /// struct를 만든다
    @State var myElevator = ElevatorStruct()
    
    var body: some View {
        VStack {
            Text("층수 : \(myElevator.level)")
            
            HStack {
                Button {
                    myElevator.goDown()
                } label: {
                    Text("아래로")
                }
                
                Button {
                    myElevator.goUp()
                } label: {
                    Text("위로")
                }
            }
        }
    }
//    func goDown(_ level: Int) -> Int {
//        return level - 1
//    }
//    
//    func goUp(_ level: Int) -> Int  {
//        return level + 1
//    }
}

struct ElevatorStruct {
    // 층 수를 표시해주는 디스플레이
    // 위로 올라갈 수 있어야 함
    // 아래로 내려갈 수 있어야 함
    var level: Int = 1
    
    mutating func goDown() {
        level = level - 1
    }
    
    mutating func goUp()  {
        level = level + 1
    }
    
}



#Preview {
    Elevator()
}
