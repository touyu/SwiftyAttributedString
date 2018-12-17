//
//  ViewController.swift
//  Demo
//
//  Created by Yuto Akiba on 2018/12/17.
//  Copyright © 2018 Yuto Akiba. All rights reserved.
//

import UIKit
import SwiftyAttributedString

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let attr = "SwiftyAttributedString"
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

        let label = UILabel()
        label.attributedText = attr
        label.sizeToFit()
        label.center = view.center
        view.addSubview(label)
    }
}

