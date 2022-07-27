
#if arch(x86_64) || arch(arm64)

import SwiftUI

// MARK: - Animation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, *)
public extension InspectableView {
    
    func callTransaction() throws {
        let callback = try modifierAttribute(
            modifierName: "_TransactionModifier",
            path: "modifier|transform",
            type: ((inout Transaction) -> Void).self, call: "transaction")
        var transaction = Transaction()
        callback(&transaction)
    }
}

#endif
