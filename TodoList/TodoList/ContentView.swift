//
//  ContentView.swift
//  TodoList
//
//  Created by Ben Duffield-Harding on 13/02/2024.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//        Text("Goodbye, world!")
//    }
//}

// click counter component
//struct ContentView: View {
//    @State var timesBeingTapped = 0
//
//    var body: some View {
//        Button("Times tapped: \(timesBeingTapped)") {
//            timesBeingTapped += 1
//        }
//    }
//}

//struct ContentView: View {
//    @State private var petName = ""
//    @State private var petNames = [String]()
//    
//    var body: some View {
//        NavigationView {
//            List {
//                Section(header: Text("Add a new pet name")) {
//                    HStack {
//                        TextField("Enter your pet's name", text: $petName)
//                        Button("Submit") {
//                            guard !petName.isEmpty else { return }
//                            petNames.append(petName)
//                            petName = ""
//                        }
//                    }
//                }
//                
//                Section {
//                    ForEach(petNames, id: \.self) { name in NavigationLink(destination: NameDisplayView(petName: name)) {
//                        Text(name)
//                    }
//                    }
//                }
//            }
//            .navigationBarTitle("Pet Names")
//        }
//    }
//}

struct ContentView: View {
    // toggles
    @State private var todoActive = [Bool]()
    // todos
    @State private var todo: String = ""
    @State private var todoNames = [String]()
    
    var body: some View {

        NavigationView {
            VStack {
                Image(.todo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.small)
                    .foregroundStyle(.tint)
                HStack {
                    Text("Todos!")
                        .font(.largeTitle)
                    Text("Toggle all them off!")
                }
                
                
                List {
                    Section(header: Text("Add a new task")) {
                        HStack {
                            TextField("Enter your task todo", text: $todo)
                            Button("Submit") {
                                guard !todo.isEmpty else { return }
                                todoNames.append(todo)
                                todoActive.append(false)
                                todo = ""
                            }
                        }
                    }
                    
                    Section {
                        VStack{
                            // loop through indexes of both arrays
                            ForEach(todoNames.indices, id: \.self) { index in
                                    NavigationLink(destination: NameDisplayView(todoName: todoNames[index])) {
                                        Text(todoNames[index])
                                    }
                                    Toggle(isOn: Binding<Bool>(
                                        get: { self.todoActive[index] },
                                        set: { self.todoActive[index] = $0 }
                                    )) {}
                                }
                        }
                    }
                    
                }.navigationBarTitle("Todos!")
            }
        }
    }
}

#Preview {
    ContentView()
}
