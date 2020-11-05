//
//  NavigationViewController.swift
//  Divercity
//
//  Created by Abdallah Gueye on 04/11/2020.
//

import UIKit

class NavigationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: "goToLogin", sender: self)
    }
    

}
