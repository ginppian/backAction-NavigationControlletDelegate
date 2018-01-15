//
//  ViewController.swift
//  probandoNavigationDelegate
//
//  Created by Gmo Ginppian on 14/01/18.
//  Copyright © 2018 BUAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var some = "Iam"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        print(some)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        print(some)
    }

    @IBAction func buttonAction(_ sender: Any) {
        performSegue(withIdentifier: "goSecondSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSecondSegue" {
            if let secondVC = segue.destination as? SecondViewController {
                secondVC.previousViewController = self
            }
        }
    }
}

