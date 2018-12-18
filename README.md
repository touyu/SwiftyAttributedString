<p align="center">
  <img src="https://github.com/touyu/SwiftyAttributedString/blob/assets/logo.png" width=900>
</p>

![Swift 4.2.1](https://img.shields.io/badge/Swift-4.2.1-orange.svg)
<img src="https://img.shields.io/badge/platforms-iOS-lightgrey.svg">
<img src="https://img.shields.io/badge/pod-v4.3.1-blue.svg">
<a href="https://github.com/Carthage/Carthage/"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"></a>
<img src="https://img.shields.io/badge/license-MIT-blue.svg">

## Features
- [x] Comfortable NSAttributedString
- [x] Better autocompletion
- [x] Easy range specification
- [x] Chainable methods
- [x] Customizable

## Installation

### Carthage
Add the following line to Cartfile:
```
github "touyu/SwiftyAttributedString"
```

Create framework:

```
$ carthage update --platform iOS
```

### CocoaPods
Add the following line to Podfile:
```swift
pod 'SwiftyAttributedString'
```

Enter the following command at the terminal:
```
$ pod install
```

## Example

```swift
textView.attributedText = "SwiftyAttributedString"
        .attr
        .font(.systemFont(ofSize: 30))
        .range(of: "Swifty") {
            $0.foregroundColor(.blue)
        }
        .range(of: "Attributed") {
            $0.foregroundColor(.red)
            $0.underlineStyle(.single)
        }
        .range(of: "String") {
            $0.foregroundColor(.orange)
            $0.font(.boldSystemFont(ofSize: 30))
        }
        .apply()
```                        

<img src="https://github.com/touyu/SwiftyAttributedString/blob/assets/001.png" height=70>

## Documentation

### All Range

```swift
"SwiftyAttributedString"
         .attr
         .font(.systemFont(ofSize: 30)) // All range
         .apply()
  
```

### The Specific Range

```swift
"SwiftyAttributedString"
         .attr
         .range(start: 0, end: 3) {
              font(.systemFont(ofSize: 30)) // The specific range
         }
         .apply()
  
```

### Customize

```swift
"SwiftyAttributedString"
    .attr
    .customize()
    .apply()

extension SwiftyAttributedString {
    func customize() -> SwiftyAttributedString {
        return font(.systemFont(ofSize: 30))
        .range(of: "Swifty") {
            $0.foregroundColor(.blue)
        }
        .range(of: "Attributed") {
            $0.foregroundColor(.red)
            $0.underlineStyle(.single)
        }
        .range(of: "String") {
            $0.foregroundColor(.orange)
            $0.font(.boldSystemFont(ofSize: 30))
        }
    }
}
```

