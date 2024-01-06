//
//  Condition.swift
//  FastSwiftBasic
//
//  Created by Dyani on 12/27/23.
//

import SwiftUI

struct Condition: View {
    
    var hasLoggedIn = false
    
    var count = 2
    
    var body: some View {
        
        if count > 4 {
            Text("숫자는 4보다 큽니다")
        } else {
            Text("숫자는 4와 같거나 작습니다")
        }
        
        if hasLoggedIn {
            Text("로그아웃 하시겠습니까?")
        } else {
            Text("로그인 하시겠습니까?")
        }
        
    }
}

#Preview {
    Condition()
}
