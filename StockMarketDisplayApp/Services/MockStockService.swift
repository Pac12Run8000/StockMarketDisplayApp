import Foundation

final class MockStockService: StockService {
    func fetchStocks() -> [Stock] {
        [
            Stock(symbol: "AAPL", price: 191.50),
            Stock(symbol: "GOOGL", price: 2745.90),
            Stock(symbol: "TSLA", price: 720.10)
        ]
    }
}
