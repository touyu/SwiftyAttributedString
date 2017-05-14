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
        
        switch attribute.value {
        case .font(let font):
            self.addAttribute(NSFontAttributeName, value: font, range: range)
        case .foregroundColor(let color):
            self.addAttribute(NSForegroundColorAttributeName, value: color, range: range)
        case .backgroundColor(let color):
            self.addAttribute(NSBackgroundColorAttributeName, value: color, range: range)
        case .kern(let nsNumber):
            self.addAttribute(NSKernAttributeName, value: nsNumber, range: range)
        case .strikethroughStyle(let nsNumber):
            self.addAttribute(NSStrikethroughStyleAttributeName, value: nsNumber, range: range)
        case .underlineStyle(let nsNumber):
            self.addAttribute(NSUnderlineStyleAttributeName, value: nsNumber, range: range)
        case .strokeColor(let color):
            self.addAttribute(NSStrokeColorAttributeName, value: color, range: range)
        case .strokeWidth(let nsNumber):
            self.addAttribute(NSStrokeWidthAttributeName, value: nsNumber, range: range)
        case .shadow(let shadow):
            self.addAttribute(NSShadowAttributeName, value: shadow, range: range)
        case .textEffect(let textEffect):
            self.addAttribute(NSTextEffectAttributeName, value: textEffect.rawValue, range: range)
        case .link(let url):
            self.addAttribute(NSLinkAttributeName, value: url, range: range)
        case .baselineOffset(let nsNumber):
            self.addAttribute(NSBaselineOffsetAttributeName, value: nsNumber, range: range)
        case .obliqueness(let nsNumber):
            self.addAttribute(NSObliquenessAttributeName, value: nsNumber, range: range)
        case .expansion(let nsNumber):
            self.addAttribute(NSExpansionAttributeName, value: nsNumber, range: range)
        }
        
        return self
    }
    
    public func add(attributeValue: AttributeValue) -> NSMutableAttributedString {
        return self.add(attribute: Attribute(value: attributeValue, range: .all))
    }
}
