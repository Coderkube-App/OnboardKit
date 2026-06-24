//
// Copyright (c) 2026 Coderkube Technologies - OnboardKit. All rights reserved.
//

import Foundation
import SwiftUI

@MainActor
public class OnboardViewModel: ObservableObject {
    @Published public var currentIndex: Int = 0
    
    public let items: [OnboardItem]
    public let configuration: OnboardConfiguration
    private let onCompletion: () -> Void
    
    public var isLastPage: Bool {
        currentIndex == items.count - 1
    }
    
    public var isFirstPage: Bool {
        currentIndex == 0
    }
    
    public init(items: [OnboardItem], configuration: OnboardConfiguration, onCompletion: @escaping () -> Void) {
        self.items = items
        self.configuration = configuration
        self.onCompletion = onCompletion
    }
    
    public func nextPage() {
        if isLastPage {
            onCompletion()
        } else {
            withAnimation {
                currentIndex += 1
            }
        }
    }
    
    public func previousPage() {
        if !isFirstPage {
            withAnimation {
                currentIndex -= 1
            }
        }
    }
    
    public func skip() {
        onCompletion()
    }
}
