
#if arch(x86_64) || arch(arm64)

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, *)
internal extension ViewType {
    struct SubscriptionView {}
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, *)
extension ViewType.SubscriptionView: SingleViewContent {

    static func child(_ content: Content) throws -> Content {
        let view = try Inspector.attribute(label: "content", value: content.view)
        return try Inspector.unwrap(view: view, medium: content.medium)
    }
}

#endif
