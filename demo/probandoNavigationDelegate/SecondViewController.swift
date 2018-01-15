//
//  SecondViewController.swift
//  probandoNavigationDelegate
//
//  Created by Gmo Ginppian on 14/01/18.
//  Copyright © 2018 BUAP. All rights reserved.
//

import UIKit

extension SecondViewController: UINavigationControllerDelegate {
    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
    
        if viewController == self.previousViewController {
            if let firstVC = viewController as? ViewController {
                firstVC.some = "Aquí estoy ✋✋✋"
            }
        }
    }
}

class SecondViewController: UIViewController {
    
    var previousViewController: ViewController?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.delegate = self
    }
}
