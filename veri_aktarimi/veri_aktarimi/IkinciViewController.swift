//
//  IkinciViewController.swift
//  veri_aktarimi
//
//  Created by Samet Korkmaz on 16.02.2024.
//

import UIKit

class IkinciViewController: UIViewController {
    var adSoyad : String?
    var kod : Int?
    @IBOutlet weak var adSoyadLabel: UILabel!
    
    @IBOutlet weak var kodLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        adSoyadLabel.text = adSoyad
        kodLabel.text = String(kod!)
    }
    
    @IBAction func geriBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
