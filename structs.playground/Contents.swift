import UIKit

// Structs pill

// classes are reference types

class BookClass {
    var title: String
    var author: String
    var publicationYear: Int
    
    init(title: String, author: String, publicationYear: Int) {
        self.title = title
        self.author = author
        self.publicationYear = publicationYear
    }
    
    func summary() -> String {
        return "\(title) by \(author), published in \(publicationYear)"
    }
}

let bookClass1 = BookClass(title: "Zorba The Greek", author: "Nikos Kazantzakis", publicationYear: 1946)
var bookClass2 = bookClass1
bookClass2.publicationYear = 1950
print(bookClass1.summary())
print(bookClass2.summary())

// structs are value types

struct BookStruct {
    var title: String
    var author: String
    var publicationYear: Int
    
    func summary() -> String {
        return "\(title) by \(author), published in \(publicationYear)"
    }
}

let bookStruct1 = BookStruct(title: "Zorba The Greek", author: "Nikos Kazantzakis", publicationYear: 1946)
var bookStruct2 = bookStruct1
bookStruct2.publicationYear = 1950
print(bookStruct1.summary())
print(bookStruct2.summary())


// challenge

struct MusicAlbum {
    var name: String
    var title: String?
    var duration: Decimal? = 0
    
    mutating func addSong(title: String, duration: Decimal) {
        self.title = title
        self.duration! += duration
        print(title, duration)
    }
    
    func totalDuration() -> String {
        return "Total Duration \(duration) minutes"
    }
}

var album = MusicAlbum(name: "Swift Tunes")

album.addSong(title: "Variable Blues", duration: 3.15)
album.addSong(title: "Constant Heart", duration: 4.07)

print(album.totalDuration())
// Should print: "Total Duration: 7.22 minutes"


// network requests


// URL

if (URL(string: "www.google.com") != nil) {
    print("Valid URL")
} else {
    print("Invalid URL")
}


// What's a struct? How does it compare to classes?
struct Post: Codable, Identifiable {
    // Defining a variable in Swift - let vs. var
    let id: Int
    let title: String
    let body: String
}





// How do you define a function? What happens if there's a return value, how do you declare that?
func fetchPosts() {
    // Let's make a request to an API for data
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }

    URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data, error == nil else { return }

        // How do we map that data to a Swift object?
        var posts = try? JSONDecoder().decode([Post].self, from: data)
        DispatchQueue.main.async {
            posts = posts ?? []
        }
    }.resume()
}

// Let's run the function
fetchPosts()
