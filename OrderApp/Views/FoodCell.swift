import UIKit
import SDWebImage

class FoodCell: UITableViewCell {
    let foodImageView = UIImageView()
    let titleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        foodImageView.translatesAutoresizingMaskIntoConstraints = false
        foodImageView.contentMode = .scaleAspectFill
        foodImageView.clipsToBounds = true

        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        contentView.addSubview(foodImageView)
        contentView.addSubview(titleLabel)

        NSLayoutConstraint.activate([
            foodImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            foodImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            foodImageView.widthAnchor.constraint(equalToConstant: 80),
            foodImageView.heightAnchor.constraint(equalToConstant: 80),

            titleLabel.leadingAnchor.constraint(equalTo: foodImageView.trailingAnchor, constant: 12),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    func configure(with item: FoodItem) {
        foodImageView.sd_setImage(with: URL(string: item.image), placeholderImage: UIImage(systemName: "photo"))
        titleLabel.text = item.name
    }
}
