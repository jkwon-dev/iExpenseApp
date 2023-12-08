//
//  Tutorial3.swift
//  iExpenseApp
//
//  Created by kwon eunji on 12/8/23.
//

import SwiftUI

struct SeconView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    
    var body: some View {
        VStack {
            Text("Hello, \(name)!")
            Button("dismiss") {
                dismiss()
            }
            .padding(.top, 30)
        }
    }
}

struct Tutorial3: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SeconView(name: "Billbo")
        }
    }
}

#Preview {
    Tutorial3()
}
