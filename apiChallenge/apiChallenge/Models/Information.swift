import Foundation

struct Company: Codable {
    let name: String
}

struct Information: Codable {
    let id: Int
    let name: String
    let photo: String
    let company: Company
}
