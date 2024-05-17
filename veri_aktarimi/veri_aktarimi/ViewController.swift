//
//  ViewController.swift
//  veri_aktarimi
//
//  Created by Samet Korkmaz on 16.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var adTextField: UITextField!
    
    @IBOutlet weak var SoyadTextField: UITextField!
    
    @IBOutlet weak var kodTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func devamBtn(_ sender: Any) {
        performSegue(withIdentifier: "1den2ye", sender: nil)
    }
    // Bilgileri burada gönderiyoru<z
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "1den2ye" {
            let ikinci = segue.destination as! IkinciViewController
            ikinci.adSoyad = adTextField.text! + " " + SoyadTextField.text!
            ikinci.kod = Int(kodTextField.text!)
        }
    }
}

