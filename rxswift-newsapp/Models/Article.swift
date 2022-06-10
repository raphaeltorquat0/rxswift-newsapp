import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}

extension ArticlesList {
    static var all: Resource<ArticlesList> = {
       let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=56c9ef3908f540898aa5af0fdecb99ff")!
       return Resource(url: url)
    }()
}
