//
// Copyright (c) 2026 Coderkube Technologies - OnboardKit. All rights reserved.
//

import SwiftUI

/// Represents a single onboarding screen's data.
public struct OnboardItem: Identifiable {
    public let id: String
    public let title: String?
    public let description: String?
    public let systemImageName: String?
    public let image: Image?
    public let customView: AnyView?
    
    public init(
        id: String = UUID().uuidString,
        title: String? = nil,
        description: String? = nil,
        systemImageName: String? = nil,
        image: Image? = nil,
        customView: AnyView? = nil
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.systemImageName = systemImageName
        self.image = image
        self.customView = customView
    }
    
    public init<V: View>(
        id: String = UUID().uuidString,
        title: String? = nil,
        description: String? = nil,
        systemImageName: String? = nil,
        image: Image? = nil,
        customView: V
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.systemImageName = systemImageName
        self.image = image
        self.customView = AnyView(customView)
    }
}
