//
//  Option.swift
//  FastSwiftBasic
//
//  Created by Dyani on 1/3/24.
//

import SwiftUI

struct Option: View {
    
    var leeo: People? = People(name: "Leeo", mbti: MBTI(name: "ENFP"))
    var bami = People(name: "bami", petname: "coco")
    var berry = People(name: "berry", petname: "cookie")
    
    var body: some View {
        VStack {
            
            if let leeo = leeo {
                if let mbti = leeo.mbti {
                    if let nemt = mbti.name {
                        
                    }
                }
            } // 옵셔널 체이닝이 필요한 이유
            
            /// 옵셔널 체이닝
            if let leeoMBTIName = leeo?.mbti?.name{
                Text(leeoMBTIName)
            } else {
                Text("NO MBTI Name")
                
            }
            
//            if let petName = leeo.petname {
//                Text("이름은 \(leeo.name) 애완동물 이름은 \(petName)")
//            } else {
//                Text("이름은 \(leeo.name) 애완동물 이름은 없어요")
//            }
            
            if let petName = bami.petname {
                Text("이름은 \(bami.name) 애완동물 이름은 \(petName)")
            }
            
            if let petName = berry.petname {
                Text("이름은 \(berry.name) 애완동물 이름은 \(petName)")
            }
            

        }
    }
}

struct People {
    let name: String
    var petname: String?
    var mbti: MBTI?
}

struct MBTI {
    let name: String?
}

#Preview {
    Option()
}
