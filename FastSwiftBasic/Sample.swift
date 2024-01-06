//
//  Sample.swift
//  FastSwiftBasic
//
//  Created by Dyani on 1/4/24.
//

import SwiftUI

struct Sample: View {
    
    let data = [
        Destination(direction: .north, 
                    food: "파스타맛집",
                    image: Image(systemName: "fork.knife")),
        Destination(direction: .east,
                    food: nil,
                    image: Image(systemName: "sunrise")),
        Destination(direction: .west,
                    food: nil,
                    image: Image(systemName: "balloon")),
        Destination(direction: .south,
                    food: "족발맛집",
                    image: Image(systemName: "pawprint.fill"))
    ]
    
    @State var selectedDestinaion: Destination?
    
    var body: some View {
        VStack {
            selectedDestinaion?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            if let destination = selectedDestinaion {
                Text(destination.direction.rawValue)
                if let food = destination.food {
                    Text(food)
                }
            }
            
            
            Button {
                selectedDestinaion = data.randomElement()
            } label: {
                Text("돌려요!")
            }
        }
    }
}

struct Destination {
    let direction: Direction
    let food: String?
    let image: Image
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Sample()
}
