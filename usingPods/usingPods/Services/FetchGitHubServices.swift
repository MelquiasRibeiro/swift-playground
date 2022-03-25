import Foundation
import Alamofire

enum FetchGithubError: Error {
    case invalidURL
}

class FetchGitHubServices: FetchGithubProtocol {
    
    func fetchAll(_ completion: @escaping (Result<[Item], Error>) -> Void) {
        guard let url = URL(string: "https://api.github.com/search/repositories?q=stars:%3E=10000+language:swift&sort=stars&order=desc") else {
            completion(.failure(FetchGithubError.invalidURL))
            return
        }
        
       AF.request(url, method: .get).validate().responseDecodable(of: GitHub.self){response in
           print(response)
           guard let repos = response.value else { print("deu ruim"); return}
           print(repos)
           completion(.success(repos.items))
        }
        
   
     
       // dataTask.resume()
    }
    
}
