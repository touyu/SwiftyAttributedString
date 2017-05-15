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
        
        textView.attributedText = textView.text.add(attribute: Attribute(value: .font(.systemFont(ofSize: 16)),
                                                                         range: .all))
                                               .add(attribute: Attribute(value: .font(.boldSystemFont(ofSize: 16)),
                                                                         range: .portion(of: .string("reprehenderit"))))
                                               .add(attribute: Attribute(value: .foregroundColor(.orange),
                                                                         range: .portion(of: .string("adipisicing"))))
                                               .add(attribute: Attribute(value: .strikethroughStyle(1.0),
                                                                         range: .portion(of: .string("pariatur"))))
                                               .add(attribute: Attribute(value: .underlineStyle(1.0),
                                                                         range: .portion(of: .string("culpa"))))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

