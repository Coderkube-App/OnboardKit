//
// Copyright (c) 2026 Coderkube Technologies - OnboardKit. All rights reserved.
//

import SwiftUI

struct OnboardPageView: View {
    let item: OnboardItem
    let theme: OnboardTheme
    
    var body: some View {
        VStack(spacing: theme.spacing) {
            Spacer()
            
            if let customView = item.customView {
                customView
            } else {
                if let image = item.image {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: theme.imageSize.width, height: theme.imageSize.height)
                } else if let systemName = item.systemImageName {
                    Image(systemName: systemName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: theme.imageSize.width, height: theme.imageSize.height)
                        .foregroundColor(theme.primaryColor)
                }
                
                if let title = item.title {
                    Text(title)
                        .font(theme.titleFont)
                        .foregroundColor(theme.titleColor)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                
                if let description = item.description {
                    Text(description)
                        .font(theme.descriptionFont)
                        .foregroundColor(theme.descriptionColor)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
            }
            
            Spacer()
        }
        .padding()
    }
}
