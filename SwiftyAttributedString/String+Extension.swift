//
//  String+Extension.swift
//  SwiftyAttributedString
//
//  Created by Yuto Akiba on 2018/12/17.
//  Copyright © 2018 Yuto Akiba. All rights reserved.
//

import Foundation

extension String {
    public var attr: SwiftyAttributedString {
        let range = (self as NSString).range(of: self)
        let attrStr = NSMutableAttributedString(string: self)
        return SwiftyAttributedString(attributedString: attrStr, range: range)
    }
}
