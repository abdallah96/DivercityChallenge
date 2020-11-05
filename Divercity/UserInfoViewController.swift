//
//  UserInfoViewController.swift
//  Divercity
//
//  Created by Abdallah Gueye on 04/11/2020.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        }
    @IBAction func pictureSelection(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
 
}

extension UserInfoViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if  let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage{
            ImageView.image = image
        }
        
        picker.dismiss(animated: true, completion: nil)

    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
}
