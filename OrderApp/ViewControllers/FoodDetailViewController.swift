import UIKit
import SDWebImage

class FoodDetailViewController: UIViewController {
    var foodItem: FoodItem?
    let imageView = UIImageView()
    let descriptionLabel = UILabel()
    let priceButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = foodItem?.name

        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true

        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.numberOfLines = 0

        priceButton.translatesAutoresizingMaskIntoConstraints = false
        priceButton.setTitle("", for: .normal)
        priceButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)

        view.addSubview(imageView)
        view.addSubview(descriptionLabel)
        view.addSubview(priceButton)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 250),

            descriptionLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            priceButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            priceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        if let item = foodItem {
            imageView.sd_setImage(with: URL(string: item.image), placeholderImage: UIImage(systemName: "photo"))
            descriptionLabel.text = item.description
            priceButton.setTitle("Buy for $\(item.price)", for: .normal)
        }
    }
}