//
//  ViewController.swift
//  sayfa_gecisleri
//
//  Created by Samet Korkmaz on 16.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gecbtn(_ sender: Any) {
        performSegue(withIdentifier: "anasayfadanIkincisayfaya", sender: nil)
    }
    
    @IBAction func sariyabtn(_ sender: Any) {
        performSegue(withIdentifier: "anasayfadan3e", sender: nil)
    }
    
}

