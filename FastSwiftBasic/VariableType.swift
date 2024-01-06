//
//  VariableType.swift
//  FastSwiftBasic
//
//  Created by Dyani on 12/21/23.
//

import SwiftUI

struct VariableType: View {
    
    var name: String = "Leeo"
    var age: Int = 20
    var height: Float = 183.6
    var havePet: Bool = false

    
    var body: some View {
        Text("\(name)")
        Text("\(age)")

    }
}

#Preview {
    VariableType()
}
