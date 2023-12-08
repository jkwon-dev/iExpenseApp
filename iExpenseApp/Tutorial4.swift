//
//  Tutorial4.swift
//  iExpenseApp
//
//  Created by kwon eunji on 12/8/23.
//

import SwiftUI

struct Tutorial4: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach (numbers, id: \.self){
                        Text("Row \($0)")
                    }
                    .onDelete(perform: { indexSet in
                        removeRows(at: indexSet)
                    })
                }
                
                Button("Add number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    func removeRows(at offsets: IndexSet ) {
        numbers.remove(atOffsets: offsets)
    }
}



#Preview {
    Tutorial4()
}
