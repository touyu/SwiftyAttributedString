<p align="center">
  <img src="https://github.com/touyu/SwiftyAttributedString/blob/assets/logo.png" width=900>
</p>

![Swift 3.0.2](https://img.shields.io/badge/Swift-3.0.2-orange.svg)
![Platform](https://img.shields.io/cocoapods/p/SwiftyAttributedString.svg)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/SwiftyAttributedString.svg)](#cocoapods)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/touyu/SwiftyAttributedString#carthage)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

## Features
- [x] Comfortable NSAttributedString
- [x] Better autocompletion
- [x] Easy range specification
- [x] Chainable methods

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

