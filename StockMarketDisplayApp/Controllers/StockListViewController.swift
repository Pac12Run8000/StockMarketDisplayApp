import UIKit

final class StockListViewController: UIViewController {

    private let service: StockService
    private let contentView = StockListView()

    init(service: StockService = MockStockService()) {
        self.service = service
        super.init(nibName: nil, bundle: nil)
        title = "Stocks"
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let stocks = service.fetchStocks()
        contentView.render(rows: stocks.map(formatRow))
    }

    // Presentation/formatting logic stays in the Controller in MVC
    private func formatRow(_ stock: Stock) -> String {
        let priceString = NumberFormatter.currencyUSD.string(from: stock.price as NSDecimalNumber) ?? "-"
        return "\(stock.symbol): \(priceString)"
    }
}
