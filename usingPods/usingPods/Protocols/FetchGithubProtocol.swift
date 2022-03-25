import Foundation

protocol FetchGithubProtocol{
    func fetchAll(_ completion: @escaping (Result<[Item], Error>) -> Void)
}
