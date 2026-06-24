//
// Copyright (c) 2026 Coderkube Technologies - OnboardKit. All rights reserved.
//

import Foundation

/// Configuration options for the onboarding behavior and navigation.
public struct OnboardConfiguration: Sendable {
    public var theme: OnboardTheme
    
    public var showSkipButton: Bool
    public var showPreviousButton: Bool
    public var showPageIndicator: Bool
    
    public var nextButtonText: String
    public var previousButtonText: String
    public var skipButtonText: String
    public var getStartedButtonText: String
    
    public var allowSwipeToNavigate: Bool
    
    public init(
        theme: OnboardTheme = OnboardTheme(),
        showSkipButton: Bool = true,
        showPreviousButton: Bool = true,
        showPageIndicator: Bool = true,
        nextButtonText: String = "Next",
        previousButtonText: String = "Previous",
        skipButtonText: String = "Skip",
        getStartedButtonText: String = "Get Started",
        allowSwipeToNavigate: Bool = true
    ) {
        self.theme = theme
        self.showSkipButton = showSkipButton
        self.showPreviousButton = showPreviousButton
        self.showPageIndicator = showPageIndicator
        self.nextButtonText = nextButtonText
        self.previousButtonText = previousButtonText
        self.skipButtonText = skipButtonText
        self.getStartedButtonText = getStartedButtonText
        self.allowSwipeToNavigate = allowSwipeToNavigate
    }
}
