import Foundation

struct FoodItem: Codable {
    let id: Int
    let name: String
    let image: String
    let price: Double
    let description: String
}