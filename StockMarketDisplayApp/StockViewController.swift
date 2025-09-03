import UIKit

class StockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Create a vertical stack view
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)

        // Constrain the stack view to the center of the screen
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        // Add stock labels
        let stocks = [
            ("AAPL", "$191.55554"),
            ("GOOGL", "$2745.90"),
            ("TSLA", "$720.10")
        ]

        for (symbol, price) in stocks {
            let label = createStockLabel(symbol: symbol, price: price)
            stackView.addArrangedSubview(label)
        }
    }

    private func createStockLabel(symbol: String, price: String) -> UILabel {
        let label = UILabel()
        label.text = "\(symbol): \(price)"
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textAlignment = .center
        return label
    }
}


