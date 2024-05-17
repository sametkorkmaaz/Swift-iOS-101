//
//  ViewController.swift
//  kullanici_Etkilesimleri
//
//  Created by Samet Korkmaz on 14.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var kullaniciAdiLbl: UITextField!
    @IBOutlet weak var SifreLbl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    override func viewDidAppear(_ animated: Bool) {
        print("did appar")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("diddisaaper")
    }
    
    @IBAction func GirisYapBtn(_ sender: Any) {
        if (kullaniciAdiLbl.text == "") || (SifreLbl.text == "") {
            AlertCikar()
        }
        else {
            print("alanlar dolu")
        }
    }
    
    
    
    
    
    func AlertCikar() {
        let alertController = UIAlertController(title: "Uyarı", message: "Eksik giriş", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
}

