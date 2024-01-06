//
//  Selection.swift
//  FastSwiftBasic
//
//  Created by Dyani on 1/2/24.
//

import SwiftUI

struct Selection: View {
    
    @State var myDirection: Directions = .south
    
    var body: some View {
        
        VStack {
            switch myDirection {
            case .north:
                Text("북쪽으로 가요")
            case .west:
                Text("서쪽으로 가요")
            case .east:
                Text("동쪽으로 가요")
            case .south:
                Text("남쪽으로 가요")
            default:
                Text("에러입니다")

            }
            
            Button {
                switch myDirection {
                case .north, .west: //,로 묶을수 있음
                    myDirection = .east
                
                case .east:
                    myDirection = .south

                default:
                    myDirection = .north
                }
                
            }label: {
                Text("돌리기")
            }
            
        }
        
    
    }
}

enum Directions: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
    case myway
    
}

#Preview {
    Selection()
}
