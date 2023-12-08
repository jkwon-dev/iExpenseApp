//
//  Tutorial5.swift
//  iExpenseApp
//
//  Created by kwon eunji on 12/8/23.
//

import SwiftUI

struct Tutorial5: View {
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    Tutorial5()
}
