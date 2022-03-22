import Foundation


enum FetchInformationError: Error {
    case invalidUrl
}


class FetchInformationService:FetchInformationProtocol {
    func fetchAll(_ completion: @escaping (Result<[Information], Error>) -> Void) {
        guard let url = URL(string: "https://run.mocky.io/v3/f0c36709-84e2-4043-a0f0-3bec512f6c84")else{
            completion(.failure(FetchInformationError.invalidUrl))
            return
        }
        let dataTask = URLSession.shared.dataTask(with: url){data, _, _ in
            
            guard let data = data else{
                return
            }
            do{
                let information = try JSONDecoder().decode([Information].self, from: data)
                completion(.success(information))
            }catch{
                completion(.failure(error))
            }
        }
        dataTask.resume()
    }
    
}
