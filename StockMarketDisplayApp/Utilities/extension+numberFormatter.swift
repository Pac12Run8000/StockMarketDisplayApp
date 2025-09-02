import Foundation

extension NumberFormatter {
    static let currencyUSD: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .currency
        nf.currencyCode = "USD"
        nf.maximumFractionDigits = 2
        return nf
    }()
}
