//
//  ContentView.swift
//  structs
//
//  Created by Ben Duffield-Harding on 14/02/2024.
//

import SwiftUI


struct ContentView: View {
    let dict = ["key1": "value1", "key2": "value2"]
    
    var body: some View {
        List {
            ForEach(Array(dict.keys), id: \.self) { key, value in
                Section(header: Text(key)) {
                    Text(value)
                }
            }
        }
    }
}



#Preview {
    ContentView()
}
