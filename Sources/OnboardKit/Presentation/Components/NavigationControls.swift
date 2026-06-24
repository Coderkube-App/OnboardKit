//
// Copyright (c) 2026 Coderkube Technologies - OnboardKit. All rights reserved.
//

import SwiftUI

struct NavigationControls: View {
    @ObservedObject var viewModel: OnboardViewModel
    
    var body: some View {
        let theme = viewModel.configuration.theme
        
        HStack {
            if viewModel.configuration.showSkipButton {
                Button(action: viewModel.skip) {
                    Text(viewModel.configuration.skipButtonText)
                        .font(theme.buttonFont)
                        .foregroundColor(theme.secondaryColor)
                }
                .opacity(viewModel.isLastPage ? 0 : 1)
            } else {
                Spacer()
            }
            
            Spacer()
            
            if viewModel.isLastPage {
                Button(action: viewModel.nextPage) {
                    Text(viewModel.configuration.getStartedButtonText)
                        .font(theme.buttonFont)
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(theme.primaryColor)
                        .cornerRadius(theme.cornerRadius)
                }
            } else {
                HStack(spacing: 16) {
                    if viewModel.configuration.showPreviousButton {
                        Button(action: viewModel.previousPage) {
                            Text(viewModel.configuration.previousButtonText)
                                .font(theme.buttonFont)
                                .foregroundColor(theme.secondaryColor)
                        }
                        .opacity(viewModel.isFirstPage ? 0 : 1)
                    }
                    
                    Button(action: viewModel.nextPage) {
                        Text(viewModel.configuration.nextButtonText)
                            .font(theme.buttonFont)
                            .foregroundColor(.white)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 12)
                            .background(theme.primaryColor)
                            .cornerRadius(theme.cornerRadius)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}
