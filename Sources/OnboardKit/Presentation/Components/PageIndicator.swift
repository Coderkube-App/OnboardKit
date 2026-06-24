//
// Copyright (c) 2026 Coderkube Technologies - OnboardKit. All rights reserved.
//

import SwiftUI

struct PageIndicator: View {
    let numberOfPages: Int
    let currentIndex: Int
    let theme: OnboardTheme
    
    var body: some View {
        HStack(spacing: theme.indicatorSpacing) {
            ForEach(0..<numberOfPages, id: \.self) { index in
                Circle()
                    .fill(index == currentIndex ? theme.activeIndicatorColor : theme.inactiveIndicatorColor)
                    .frame(width: theme.indicatorSize, height: theme.indicatorSize)
                    .animation(.easeInOut, value: currentIndex)
            }
        }
    }
}
