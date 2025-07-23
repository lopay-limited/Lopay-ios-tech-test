import UIKit
import SDWebImage

class FoodListViewController: UITableViewController {
    var items: [FoodItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Food Menu"
        tableView.register(FoodCell.self, forCellReuseIdentifier: "FoodCell")

        APIService.shared.fetchFoodItems { items in
            self.items = items
            self.tableView.reloadData()
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell
        let item = items[indexPath.row]
        cell.configure(with: item)
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = FoodDetailViewController()
        detailVC.foodItem = items[indexPath.row]
        navigationController?.pushViewController(detailVC, animated: true)
    }
}