import Foundation

struct ProductResponse: Codable {
    let products: [Product]
}

struct Product: Codable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let thumbnail: String
}

class APIService {
    static let shared = APIService()
    let urlString = "https://dummyjson.com/products"

    func fetchFoodItems(completion: @escaping ([FoodItem]) -> Void) {
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(ProductResponse.self, from: data)
                    DispatchQueue.main.async {
                        completion(response.products.map {
                            FoodItem(id: $0.id, name: $0.title, image: $0.thumbnail, price: $0.price, description: $0.description)
                        })
                    }
                } catch {
                    print("Decoding error: \(error)")
                }
            }
        }.resume()
    }
}