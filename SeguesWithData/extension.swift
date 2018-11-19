//
//  extension.swift
//  SeguesWithData
//
//  Created by VIkash Tank on 18/11/2018.
//  Copyright © 2018 VIkash Tank. All rights reserved.
//

import UIKit

typealias PrepareHandler = (UIViewController) -> ()

class SegueManager {
    
    var viewController: UIViewController
    
    var handler: PrepareHandler?
    
    init(_ viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let handler = self.handler {
            handler(segue.destination)
            self.handler = nil
        }
    }
    
    func performSegue(withIdentifier segue: String, sender: Any?, prepareHandler: @escaping PrepareHandler) {
        self.handler = prepareHandler
        self.viewController.performSegue(withIdentifier: segue, sender: sender)
        self.handler = nil
    }
    
}

class AppViewController: UIViewController {
    
    lazy var segue = SegueManager(self)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.segue.prepare(for: segue, sender: sender)
    }
}
