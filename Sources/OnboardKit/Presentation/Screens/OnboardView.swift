//
// Copyright (c) 2026 Coderkube Technologies - OnboardKit. All rights reserved.
//

import SwiftUI

/// The main entry point for the onboarding flow.
public struct OnboardView: View {
    @StateObject private var viewModel: OnboardViewModel
    
    public init(
        items: [OnboardItem],
        configuration: OnboardConfiguration = OnboardConfiguration(),
        onCompletion: @escaping () -> Void
    ) {
        _viewModel = StateObject(wrappedValue: OnboardViewModel(items: items, configuration: configuration, onCompletion: onCompletion))
    }
    
    public var body: some View {
        let theme = viewModel.configuration.theme
        
        ZStack {
            theme.backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                TabView(selection: $viewModel.currentIndex) {
                    ForEach(Array(viewModel.items.enumerated()), id: \.offset) { index, item in
                        OnboardPageView(item: item, theme: theme)
                            .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                VStack(spacing: 24) {
                    if viewModel.configuration.showPageIndicator {
                        PageIndicator(
                            numberOfPages: viewModel.items.count,
                            currentIndex: viewModel.currentIndex,
                            theme: theme
                        )
                    }
                    
                    NavigationControls(viewModel: viewModel)
                }
                .padding(.bottom, 32)
                .padding(.top, 16)
            }
        }
        .animation(.default, value: viewModel.currentIndex)
    }
}

#Preview {
    OnboardView(
        items: [
            OnboardItem(title: "Welcome", description: "Discover our features.", systemImageName: "star.fill"),
            OnboardItem(title: "Secure", description: "Your data is safe.", systemImageName: "lock.shield.fill"),
            OnboardItem(title: "Get Started", description: "Let's begin.", systemImageName: "rocket.fill")
        ],
        onCompletion: {
            print("Done")
        }
    )
}
