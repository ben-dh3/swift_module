//
//  ContentView.swift
//  networkRequests
//
//  Created by Ben Duffield-Harding on 14/02/2024.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var viewModel = PostsViewModel()
    
    var body: some View {
        List(viewModel.posts, id: \.id) { post in VStack(alignment: .leading) {
            Text(post.title)
            Text(post.body)
                .font(.subheadline).foregroundColor(.secondary)
            }
        }
        .onAppear {
            viewModel.fetchPosts()
        }
    }
}

#Preview {
    ContentView()
}
