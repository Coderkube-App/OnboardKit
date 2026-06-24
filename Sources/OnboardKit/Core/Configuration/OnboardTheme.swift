//
// Copyright (c) 2026 Coderkube Technologies - OnboardKit. All rights reserved.
//

import SwiftUI

/// A theme object that defines the visual appearance of the onboarding flow.
public struct OnboardTheme: Sendable {
    public var primaryColor: Color
    public var secondaryColor: Color
    public var backgroundColor: Color
    
    public var titleFont: Font
    public var descriptionFont: Font
    public var buttonFont: Font
    
    public var titleColor: Color
    public var descriptionColor: Color
    
    public var spacing: CGFloat
    public var cornerRadius: CGFloat
    public var imageSize: CGSize
    
    public var activeIndicatorColor: Color
    public var inactiveIndicatorColor: Color
    public var indicatorSize: CGFloat
    public var indicatorSpacing: CGFloat
    
    public var buttonStyle: OnboardButtonStyle
    
    public init(
        primaryColor: Color = .blue,
        secondaryColor: Color = .gray,
        backgroundColor: Color = Color(UIColor.systemBackground),
        titleFont: Font = .largeTitle.bold(),
        descriptionFont: Font = .body,
        buttonFont: Font = .headline,
        titleColor: Color = .primary,
        descriptionColor: Color = .secondary,
        spacing: CGFloat = 20,
        cornerRadius: CGFloat = 12,
        imageSize: CGSize = CGSize(width: 200, height: 200),
        activeIndicatorColor: Color = .blue,
        inactiveIndicatorColor: Color = .gray.opacity(0.5),
        indicatorSize: CGFloat = 8,
        indicatorSpacing: CGFloat = 8,
        buttonStyle: OnboardButtonStyle = .filled
    ) {
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.backgroundColor = backgroundColor
        self.titleFont = titleFont
        self.descriptionFont = descriptionFont
        self.buttonFont = buttonFont
        self.titleColor = titleColor
        self.descriptionColor = descriptionColor
        self.spacing = spacing
        self.cornerRadius = cornerRadius
        self.imageSize = imageSize
        self.activeIndicatorColor = activeIndicatorColor
        self.inactiveIndicatorColor = inactiveIndicatorColor
        self.indicatorSize = indicatorSize
        self.indicatorSpacing = indicatorSpacing
        self.buttonStyle = buttonStyle
    }
}

public enum OnboardButtonStyle: Sendable {
    case filled
    case bordered
    case plain
}
