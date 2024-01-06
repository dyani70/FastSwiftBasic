//
//  MyCar.swift
//  FastSwiftBasic
//
//  Created by Dyani on 1/6/24.
//

import SwiftUI

protocol Driveable {
    func speedDown(with speed: Int) -> Int
}

struct MyCar: View {
    
    var myCar: KIA = KIA()
    var broCar:Hyundai = Hyundai()
    let cars: [Driveable] = [KIA(), Hyundai()]
    
    @State var speed: Int = 10
    
    var body: some View {
        
        Text("speed: \(speed)")
        Button("감속!") {
            speed = broCar.speedDown(with: speed)
            cars.randomElement()?.speedDown(with: speed)
        }
        
    }
}

struct KIA: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("속도가 0으로 줄어듭니다")
        return speed - 0
    }

}

struct Hyundai: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("속도가 촤촤촤 줄어듭니다")
        return speed - 9
    }
}



#Preview {
    MyCar()
}
