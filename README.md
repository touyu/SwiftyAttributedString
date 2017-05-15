<p align="center">
  <img src="https://github.com/touyu/SwiftyAttributedString/blob/assets/logo.png" width=900>
</p>

![Swift 3.0.2](https://img.shields.io/badge/Swift-3.0.2-orange.svg)
![Platform](https://img.shields.io/cocoapods/p/SwiftyAttributedString.svg)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/SwiftyAttributedString.svg)](#cocoapods)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

## Features
- [x] Comfortable NSAttributedString
- [x] Better autocompletion
- [x] Easy range specification
- [x] Chainable methods

## Installation

### Carthage
Add the following line to Cartfile
```
github "touyu/SwiftyAttributedString"
```

Create framework

```
$ carthage update --platform iOS
```

## Example

```swift
textView.attributedText = "SwiftyAttributedString"
            .add(attribute: Attribute(value: .font(.systemFont(ofSize: 16))))
            .add(attribute: Attribute(value: .font(.boldSystemFont(ofSize: 16)),
                                      range: .portion(of: .string("String"))))
            .add(attribute: Attribute(value: .foregroundColor(.blue),
                                      range: .portion(of: .string("Swifty"))))
            .add(attribute: Attribute(value: .foregroundColor(.red),
                                      range: .portion(of: .string("Attributed"))))
            .add(attribute: Attribute(value: .foregroundColor(.orange),
                                      range: .portion(of: .string("String"))))
            .add(attribute: Attribute(value: .underlineStyle(1.0),
                                      range: .portion(of: .string("Attributed"))))
```

```swift
textView.attributedText = "SwiftyAttributedString"
            .add(attributes: [Attribute(value: .font(.systemFont(ofSize: 16))),
                              Attribute(value: .font(.boldSystemFont(ofSize: 16)),
                                        range: .portion(of: .string("String"))),
                              Attribute(value: .foregroundColor(.blue),
                                        range: .portion(of: .string("Swifty"))),
                              Attribute(value: .foregroundColor(.red),
                                        range: .portion(of: .string("Attributed"))),
                              Attribute(value: .foregroundColor(.orange),
                                        range: .portion(of: .string("String"))),
                              Attribute(value: .underlineStyle(1.0),
                                        range: .portion(of: .string("Attributed")))])
```

<img src="https://github.com/touyu/SwiftyAttributedString/blob/assets/001.png" height=70>

## Usage
```swift
// If you do not specify a range, the value applies to the full range
let attribute = Attribute(value: .font(.systemFont(ofSize: 16)))
```

```swift
let attribute = Attribute(value: .font(.systemFont(ofSize: 16)),
                          range: .all)
```

```swift
// Applied only to "Swifty"                          
let attribute = Attribute(values: [.font(.systemFont(ofSize: 16)),
                                   .foregroundColor(.blue)],
                          range: .portion(of: .string("Swifty")))
```

- - -

```swift
textView.attributedText = "SwiftyAttributedString".add(attribute: attribute)
```

```swift
textView.attributedText = "SwiftyAttributedString".add(attributes: [attribute1, attribute2, attribute3])
```

## References
| Dictionary Key                                | Attributed Value                                    |
| ----------------------------------------------| --------------------------------------------------- |
| `NSFontAttributeName`                         | `.font(UIFont)`                                     |
| `NSForegroundColorAttributeName`              | `.foregroundColor(UIColor)`                         |
| `NSBackgroundColorAttributeName`              | `.backgroundColor(UIColor)`                         |
| `NSKernAttributeName`                         | `.kern(NSNumber)`                                   |
| `NSStrikethroughStyleAttributeName`           | `.strikethroughStyle(NSNumber)`                     |
| `NSUnderlineStyleAttributeName`               | `.underlineStyle(NSNumber)`                         |
| `NSStrokeColorAttributeName`                  | `.strokeColor(UIColor)`                             |
| `NSStrokeWidthAttributeName`                  | `.strokeWidth(NSNumber)`                            |
| `NSShadowAttributeName`                       | `.shadow(NSShadow)`                                 |
| `NSTextEffectAttributeName`                   | `.textEffect(SwiftyAttributedString.TextEffect)`    |
| `NSLinkAttributeName`                         | `.link(URL)`                                        |
| `NSBaselineOffsetAttributeName`               | `.baselineOffset(NSNumber)`                         |
| `NSObliquenessAttributeName`                  | `.obliqueness(NSNumber)`                            |
| `NSExpansionAttributeName`                    | `.expansion(NSNumber)`                              |
