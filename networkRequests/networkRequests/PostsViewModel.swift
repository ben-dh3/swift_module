//
//  PostsViewModel.swift
//  networkRequests
//
//  Created by Ben Duffield-Harding on 15/02/2024.
//

import Foundation

class PostsViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    
    func fetchPosts() {
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        
        // guard let for dealing with optionals - data, response, error
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data else { return }
            do {
                print(data)
                // use decoder on Codable protocol struct
                let posts = try JSONDecoder().decode([Post].self, from: data)
                // assigned to main thread
                DispatchQueue.main.async {
                    self.posts = posts
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
