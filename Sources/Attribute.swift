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
    
    enum Portion {
        case string(String)
        case range(NSRange)
    }
    
    func toNSRange(string: String) -> NSRange {
        
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
    var value: AttributeValue
    var range: AttributeRange
    
    init(value: AttributeValue, range: AttributeRange = .all) {
        self.value = value
        self.range = range
    }
}

public enum TextEffect: String {
    case letterPressStyle = "_UIKitNewLetterpressStyle"
}
