//
//  ViewController.swift
//  Divercity
//
//  Created by Abdallah Gueye on 04/11/2020.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    @IBOutlet var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondPage", sender: self)
    }
    

}

