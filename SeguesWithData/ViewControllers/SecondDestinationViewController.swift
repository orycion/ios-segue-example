//
//  SecondDestinationViewController.swift
//  SeguesWithData
//
//  Created by VIkash Tank on 19/11/2018.
//  Copyright © 2018 VIkash Tank. All rights reserved.
//

import UIKit

class SecondDestinationViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textLabel.text = self.text
    }
    
    

}
