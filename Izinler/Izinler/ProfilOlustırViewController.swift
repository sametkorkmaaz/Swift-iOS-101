//
//  ProfilOlustırViewController.swift
//  Izinler
//
//  Created by Samet Korkmaz on 4.03.2024.
//

import UIKit

class ProfilOlust_rViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func kameraAc(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            var imagePicker = UIImagePickerController()
            imagePicker.sourceType = .camera
            imagePicker.delegate = self
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as!UIImage
        
        dismiss(animated: true, completion: nil)
    }
    
}
