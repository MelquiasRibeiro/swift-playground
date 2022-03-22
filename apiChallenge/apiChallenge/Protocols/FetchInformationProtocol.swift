import Foundation

protocol FetchInformationProtocol {
    func fetchAll(_ completion: @escaping(Result<[Information],Error>)->Void)
}
