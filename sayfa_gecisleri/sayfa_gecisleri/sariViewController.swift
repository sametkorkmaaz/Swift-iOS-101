//
//  sariViewController.swift
//  sayfa_gecisleri
//
//  Created by Samet Korkmaz on 16.02.2024.
//

import UIKit

class sariViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func kırmızıyabtn(_ sender: Any) {
     dismiss(animated: true, completion: nil)
    }
    
    @IBAction func maviyebtn(_ sender: Any) {
        performSegue(withIdentifier: "3den2ye", sender: nil)
    }
    
}
