//
//  Attribute.swift
//  SwiftyAttributedString
//
//  Created by Yuto Akiba on 2017/05/14.
//  Copyright © 2017年 Yuto Akiba. All rights reserved.
//

import UIKit

public enum AttributeValue {
    case font(UIFont)
    case foregroundColor(UIColor)
    case backgroundColor(UIColor)
    case kern(NSNumber)
    case strikethroughStyle(NSNumber)
    case underlineStyle(NSNumber)
    case strokeColor(UIColor)
    case strokeWidth(NSNumber)
    case shadow(NSShadow)
    case textEffect(TextEffect)
    case link(URL)
    case baselineOffset(NSNumber)
    case obliqueness(NSNumber)
    case expansion(NSNumber)
}

public enum AttributeRange {
    case all
    case portion(of: Portion)
    
    public enum Portion {
        case string(String)
        case range(NSRange)
    }
    
    public func toNSRange(string: String) -> NSRange {
        
        switch self {
        case .all:
            let titleRange = (string as NSString).range(of: string)
            return titleRange
        case .portion(let portion):
            
            switch portion {
            case .string(let portionString):
                let titleRange = (string as NSString).range(of: portionString)
                return titleRange
            case .range(let range):
                return range
            }
        }
    }
}

public struct Attribute {
    public var values: [AttributeValue] = []
    public var range: AttributeRange
    
    public init(value: AttributeValue, range: AttributeRange = .all) {
        self.values = [value]
        self.range = range
    }
    
    public init(values: [AttributeValue], range: AttributeRange = .all) {
        self.values = values
        self.range = range
    }
}

public enum TextEffect: String {
    case letterPressStyle = "_UIKitNewLetterpressStyle"
}
