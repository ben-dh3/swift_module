//
//  NameDisplayView.swift
//  TodoList
//
//  Created by Ben Duffield-Harding on 13/02/2024.
//

import Foundation
import SwiftUI

struct NameDisplayView: View {
var todoName: String
@State private var description = ""
@State private var viewDescription = String()
    
          var body: some View {
              NavigationView {
                  VStack {
                      Section(header: Text("Add a description")) {
                          HStack {
                              TextField("Enter a description", text: $description)
                              Button("Submit") {
                                  guard !description.isEmpty else { return }
                                  viewDescription = description
                              }
                          }
                          
                      }
                      Section(header: Text("Description")) {
                          Text(viewDescription)
                      }
                  }
              }.navigationBarTitle("\(todoName) details!")
          }
}
