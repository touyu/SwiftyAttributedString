//
//  NSAttributedStringHelper.swift
//  SwiftyAttributedString
//
//  Created by Yuto Akiba on 2017/05/14.
//  Copyright © 2017年 Yuto Akiba. All rights reserved.
//

import UIKit

public extension String {
    @available(*, deprecated: 1.0)
    public func findRange(_ string: String?) -> NSRange {
        guard let string = string else { return NSRange() }
        let titleRange = (self as NSString).range(of: string)
        return titleRange
    }

    @available(*, deprecated: 1.0)
    public func add(attribute: Attribute) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        return attributedString.add(attribute: attribute)
    }

    @available(*, deprecated: 1.0)
    public func add(attributeValue: AttributeValue) -> NSMutableAttributedString {
        return self.add(attribute: Attribute(value: attributeValue, range: .all))
    }

    @available(*, deprecated: 1.0)
    public func add(attributes: [Attribute]) -> NSMutableAttributedString {
        var attributedString = NSMutableAttributedString(string: self)
        for attribute in attributes {
            attributedString = attributedString.add(attribute: attribute)
        }
        return attributedString
    }
}
