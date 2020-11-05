//
//  UserViewController.swift
//  Divercity
//
//  Created by Abdallah Gueye on 04/11/2020.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        
        if let password = password.text{
            
                let re = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"
                do {
                        let regex = try NSRegularExpression(pattern: re)
                        let results = regex.matches(in: password,
                                                    range: NSRange(password.startIndex..., in: password))
                    if results.count == 0 {
                        let alert = UIAlertController(title: "Alert", message: "Password invalid", preferredStyle: UIAlertController.Style.alert)
                        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)                    }
                    else{
                        performSegue(withIdentifier: "goToHome", sender: self)
                    }
        
                    } catch let error {
                        print("invalid regex: \(error.localizedDescription)")
                    }
            
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
