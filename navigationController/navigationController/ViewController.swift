//
//  ViewController.swift
//  navigationController
//
//  Created by Samet Korkmaz on 17.02.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sifre: UITextField!
    @IBOutlet weak var kullaniciadi: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func girisyapBtn(_ sender: Any) {
        if kullaniciadi.text == "a" && sifre.text == "a" {
            performSegue(withIdentifier: "gitAnasayfa", sender: nil)
        } else {
            performSegue(withIdentifier: "gitUyeol", sender: nil)
        }
    }
}

