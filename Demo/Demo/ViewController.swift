//
//  ViewController.swift
//  Demo
//
//  Created by Yuto Akiba on 2017/05/15.
//  Copyright © 2017年 Yuto Akiba. All rights reserved.
//

import UIKit
import SwiftyAttributedString

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

