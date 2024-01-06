//
//  Function.swift
//  FastSwiftBasic
//
//  Created by Dyani on 12/28/23.
//

import SwiftUI

/**
 func 함수이름 (매개변수 이름: 값) {
     실행 할 코드
 }
 */
struct Function: View {
    
    @State var inputNumber: Int = 4
    
    var body: some View {
        VStack {
            Text("Input number is \(inputNumber)")
            
            Button(action: {
                inputNumber = plusFive(with: inputNumber)
            }, label: {
                Text("+5")
            })
        }
    }
    
    
    ///함수 사용할 때 가독성을 높여 이해하기 쉽게 바깥에 쓸 변수명을 정의할 수 있다 아래예시에 사용한 with
    func plusFive(with input: Int) -> Int {
        return input + 5
    }
    
}

#Preview {
    Function()
}
