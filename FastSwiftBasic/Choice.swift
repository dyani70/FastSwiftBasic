//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by Dyani on 1/2/24.
//

import SwiftUI

struct Choice: View {
    
    var direction: Direction = .north
    var member: Member = .leeo
    var menu: Menu = .steak("미디움")
    
    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다")
    }
}

enum Member: String {
    case leeo = "리이오"
    case tom
    case bami
    case koko
}

enum Menu {
    case pasta
    case pizza
    case steak(String)
}

//enum Direction: String {
//    case north = "북"
//    case west = "서"
//    case east = "동"
//    case south = "남"
//    
//}


#Preview {
    Choice()
}
