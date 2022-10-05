//
//  ViewController.swift
//  WidgetKullanimi
//
//  Created by Mehmet Ali Kılıçlı on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mSwitch:  UISwitch!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldGirdi: UITextField!
    @IBOutlet weak var segmentedKontrol: UISegmentedControl!
    @IBOutlet weak var labelSlider: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelSlider.text = String(Int(slider.value))
        labelStepper.text = String(Int(stepper.value))
        
        indicator.isHidden = true

    }
    @IBAction func buttoYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    
    @IBAction func buttonResim1(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu")
    }
    @IBAction func buttonResim2(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")
        
    }
    @IBAction func switchKontrol(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch : On")
        } else {
            print("Switch : Off")
        }
    }
    
    @IBAction func buttonGoster(_ sender: Any) {
        
        print("Switch en son durum : \(mSwitch.isOn)")
        
        let secilenIndex = segmentedKontrol.selectedSegmentIndex
        let secilenKategori = segmentedKontrol.titleForSegment(at: secilenIndex)
        print("En son seçim :\(secilenKategori!)")
        
        print("Slider sonuç : \(slider.value)")
        print("Stepper sonuç :\(stepper.value)")

        
    }
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        
        let secilenIndex = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndex)
        print("Seçim :\(secilenKategori!)")
    }
    
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        
        labelSlider.text = String(Int(sender.value))
        
    }
    
    
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        
        labelStepper.text = String(Int(sender.value))
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
}

