//
//  ProfilViewController.swift
//  Izinler
//
//  Created by Samet Korkmaz on 4.03.2024.
//

import UIKit
import AVFoundation // İZİNLERİ KONTROL ETMEK İÇİN

class ProfilViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var arkaPlanImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func kameraAcKontrol(_ sender: Any) {
        KameraKontrol()
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        arkaPlanImage.image = image
        
        dismiss(animated: true, completion: nil)
    }
    
    func KameraKontrol() {
        let durum = AVCaptureDevice.authorizationStatus(for: .video) // KAMERA KONTROLÜ
        
        switch durum {
        case .notDetermined: // daha belirlenmemiş durum
            uyariVer()
        case .restricted:  // KISITLI
            uyariVer()
        case .denied:   // REDDEDİLMİŞ
            uyariVer()
        case .authorized:// İZİN VERİŞLMİŞ
            KameraAc()
        default:
            print("default")
        }
    }
    
    func uyariVer() {
        let başlık = "Kameraya erişilemiyot!"
        let uyari = "Ayarlardan kameraya izin verin"
        
        let bildirim = UIAlertController(title: başlık, message: uyari, preferredStyle: .alert)
        
        bildirim.addAction(UIAlertAction(title: "Tamam", style: .cancel, handler: nil))
        bildirim.addAction(UIAlertAction(title: "Ayarlar", style: .default, handler: AyarlarAc))
        
        present(bildirim, animated: true, completion: nil)
    }
    
    func AyarlarAc(bildirim: UIAlertAction){
        guard let ayarlarUrl = URL(string: UIApplication.openSettingsURLString) else {return}
        
        if UIApplication.shared.canOpenURL(ayarlarUrl) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(ayarlarUrl, completionHandler: nil)
            } else {
                UIApplication.shared.openURL(ayarlarUrl)
            }
        }
    }
    func KameraAc() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            
            present(imagePicker, animated: true, completion: nil)
        }
    }
}
