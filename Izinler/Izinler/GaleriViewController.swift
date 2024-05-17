//
//  GaleriViewController.swift
//  Izinler
//
//  Created by Samet Korkmaz on 4.03.2024.
//

import UIKit

class GaleriViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var galeriArkaPlan: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func gaeleriAcBtn(_ sender: Any) {
        GaleriAc()
    }
    
    func GaleriAc () {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        galeriArkaPlan.image = image
        
        dismiss(animated: true, completion: nil)
    }
}
