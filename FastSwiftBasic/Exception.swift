//
//  Exception.swift
//  FastSwiftBasic
//
//  Created by Dyani on 1/5/24.
//

//예외 처리

import SwiftUI

struct Exception: View {
    
    @State var inputNumber =  ""
    @State var resultNumber: Float = 0
    
    var body: some View {
        VStack {
            Text("10을")
            TextField("나눌 숫자를 입력해주세요", text: $inputNumber)
            Text("로 나눈결과는 다음과 같아요 \(resultNumber)")
            Button {
//                resultNumber = 10 / (Float(inputNumber) ?? 1.0) --> 밑에 func로 만들기
                // 2.에러받기
                do {
                    try resultNumber = devideTen(with: (Float(inputNumber) ?? 1.0)) //한번 해보고
                } catch DivideError.dividedByZero { //문제생기면 캐치 에러 처리
                    print("0으로 나누었어요")
                    resultNumber = -99
                    inputNumber = "잘못된 입력입니다"
                } catch {
                    print(error.localizedDescription)
                }
                
                
            } label: {
                Text("나누기")
            }
        }
    }
    
    // 1. 에러던지고
    func devideTen(with inputNumber: Float) throws ->  Float {
        var result: Float = 0
        if inputNumber == 0  {
            throw DivideError.dividedByZero //에러 던지기
        } else {
            result = 10 / inputNumber
        }
        return result
    }
}

//에러 정의
enum DivideError: Error  {
    case dividedByZero
}

#Preview {
    Exception()
}
