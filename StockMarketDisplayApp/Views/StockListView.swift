import UIKit

final class StockListView: UIView {

    private let stack = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        layoutUI()
    }
    required init?(coder: NSCoder) { super.init(coder: coder); configure(); layoutUI() }

    func render(rows: [String]) {
        stack.arrangedSubviews.forEach { $0.removeFromSuperview() }
        rows.forEach { stack.addArrangedSubview(createStockLabel(text: $0)) }
    }

    // MARK: - Private

    private func configure() {
        backgroundColor = .systemBackground
        stack.axis = .vertical
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stack)
    }

    private func layoutUI() {
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stack.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    private func createStockLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }
}
