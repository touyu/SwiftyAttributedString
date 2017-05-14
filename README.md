<p align="center">
  <img src="https://github.com/touyu/SwiftyAttributedString/blob/assets/logo.png" width=900>
</p>

![Swift 3.1.1](https://img.shields.io/badge/Swift-3.1.0-orange.svg)
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

## Usage

```swift
textView.attributedText = "sample text"
  .add(attribute: Attribute(value: .font(.systemFont(ofSize: 16)),
                            range: .all))
  .add(attribute: Attribute(value: .foregroundColor(.orange),
                            range: .portion(of: .string("sample"))))
```

<img src="https://github.com/touyu/SwiftyAttributedString/blob/assets/001.png" height=60>

```swift
textView.attributedText = "sample text"
  .add(attributes: [Attribute(value: .strikethroughStyle(1.0),
                              range: .portion(of: .string("sample"))),
                    Attribute(value: .underlineStyle(1.0),
                              range: .portion(of: .string("text")))])
```

<img src="https://github.com/touyu/SwiftyAttributedString/blob/assets/002.png" height=70>


