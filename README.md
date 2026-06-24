# OnboardKit

`OnboardKit` is a reusable Swift Package that provides a clean, scalable, and production-ready customizable onboarding system for Apple platforms using SwiftUI.

It supports:

- Horizontal scrollable onboarding screens
- Dynamic data-driven onboarding items
- Fully customizable fonts, colors, sizes, spacing, corner radius, backgrounds, and animations
- Customizable page indicator style (Show/Hide, Colors, Custom Views)
- Configurable navigation controls (Next, Previous, Skip, Get Started)
- Support for Title, Description, Image/Icon, and Custom content view
- Light and dark mode support
- Accessibility and localization-ready
- Generic and reusable across multiple apps

## Requirements

- iOS 15+
- macOS 12+
- Swift 6.2+

## Installation

### Swift Package Manager

In Xcode:

1. Go to **File > Add Packages...**
2. Enter your repository URL for `OnboardKit`
3. Select the version/range and add the package

Or in `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/Coderkube-App/OnboardKit.git", from: "1.0.0")
],
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "OnboardKit", package: "OnboardKit")
        ]
    )
]
```

## Package Structure

```text
OnboardKit/
 ├── Sources/OnboardKit/
 │   ├── Core/
 │   ├── Data/
 │   ├── Domain/
 │   └── Presentation/
 ├── Tests/OnboardKitTests/
 └── Package.swift
```

## Usage

### Basic Example

```swift
import SwiftUI
import OnboardKit

struct WelcomeView: View {
    let items: [OnboardItem] = [
        OnboardItem(
            id: "1",
            title: "Welcome",
            description: "Discover the best features of our app.",
            systemImageName: "star.fill"
        ),
        OnboardItem(
            id: "2",
            title: "Secure",
            description: "Your data is safe and encrypted.",
            systemImageName: "lock.shield.fill"
        )
    ]
    
    var body: some View {
        OnboardView(
            items: items,
            onCompletion: {
                print("Onboarding completed!")
            }
        )
    }
}
```

### Customization

You can provide an `OnboardConfiguration` to customize the appearance and behavior:

```swift
let config = OnboardConfiguration(
    theme: OnboardTheme(
        primaryColor: .blue,
        secondaryColor: .gray,
        titleFont: .largeTitle.bold(),
        descriptionFont: .body
    ),
    showSkipButton: true,
    showPreviousButton: false
)

OnboardView(
    items: items,
    configuration: config,
    onCompletion: {
        print("Done")
    }
)
```

## Testing

Run tests:

```bash
swift test
```

## Automated Versioning

This repository uses a GitHub Actions workflow to automatically create version tags and GitHub Releases after changes are merged into `main`.

Version bump rules:

- `fix:` or other non-breaking commits -> patch bump (`x.y.Z`)
- `feat:` -> minor bump (`x.Y.0`)
- `BREAKING CHANGE` in the commit body or footer -> major bump (`X.0.0`)

## Design Notes

- Clean Architecture principles applied
- Reusable UI components
- High degree of visual customization via `OnboardTheme`

## License

This project is licensed under the MIT License.
