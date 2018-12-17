//
//  NSMutableAttributedString+AttributeExtension.swift
//  SwiftyAttributedString
//
//  Created by Yuto Akiba on 2017/05/14.
//  Copyright © 2017年 Yuto Akiba. All rights reserved.
//

import UIKit

public extension NSMutableAttributedString {
    
    public func add(attribute: Attribute) -> NSMutableAttributedString {
        let text = self.string
        let range = attribute.range.toNSRange(string: text)
        
        for value in attribute.values {
            convertNSMutableAttributedString(value: value, range: range)
        }
        
        return self
    }
    
    public func add(attributeValue: AttributeValue) -> NSMutableAttributedString {
        return self.add(attribute: Attribute(value: attributeValue, range: .all))
    }
    
    private func convertNSMutableAttributedString(value: AttributeValue, range: NSRange) {
        switch value {
        case .font(let font):
            self.addAttribute(NSAttributedString.Key.font, value: font, range: range)
        case .foregroundColor(let color):
            self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        case .backgroundColor(let color):
            self.addAttribute(NSAttributedString.Key.backgroundColor, value: color, range: range)
        case .kern(let nsNumber):
            self.addAttribute(NSAttributedString.Key.kern, value: nsNumber, range: range)
        case .strikethroughStyle(let nsNumber):
            self.addAttribute(NSAttributedString.Key.strikethroughStyle, value: nsNumber, range: range)
        case .underlineStyle(let nsNumber):
            self.addAttribute(NSAttributedString.Key.underlineStyle, value: nsNumber, range: range)
        case .strokeColor(let color):
            self.addAttribute(NSAttributedString.Key.strokeColor, value: color, range: range)
        case .strokeWidth(let nsNumber):
            self.addAttribute(NSAttributedString.Key.strokeWidth, value: nsNumber, range: range)
        case .shadow(let shadow):
            self.addAttribute(NSAttributedString.Key.shadow, value: shadow, range: range)
        case .textEffect(let textEffect):
            self.addAttribute(NSAttributedString.Key.textEffect, value: textEffect.rawValue, range: range)
        case .link(let url):
            self.addAttribute(NSAttributedString.Key.link, value: url, range: range)
        case .baselineOffset(let nsNumber):
            self.addAttribute(NSAttributedString.Key.baselineOffset, value: nsNumber, range: range)
        case .obliqueness(let nsNumber):
            self.addAttribute(NSAttributedString.Key.obliqueness, value: nsNumber, range: range)
        case .expansion(let nsNumber):
            self.addAttribute(NSAttributedString.Key.expansion, value: nsNumber, range: range)
        }
    }
}
