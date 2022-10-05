//
//  ViewController.swift
//  DateTimePickerKullanimi
//
//  Created by Mehmet Ali Kılıçlı on 2.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldTarih: UITextField!
    
    @IBOutlet weak var textFieldSaat: UITextField!
    
    var datePicker : UIDatePicker?
    var timePicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textFieldTarih.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textFieldSaat.inputView = timePicker
        
        if #available(iOS 13.4, *) {
            datePicker?.preferredDatePickerStyle = .wheels
            timePicker?.preferredDatePickerStyle = .wheels
        }
        
         let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilamaMethod))
        view.addGestureRecognizer(dokunmaAlgilama)
        
        datePicker?.addTarget(self, action: #selector(tarihGoster(uiDatePicker:)), for: .valueChanged)
        timePicker?.addTarget(self, action: #selector(saatGoster(uiDatePicker:)), for: .valueChanged)

    }
    
    @objc func dokunmaAlgilamaMethod() {
        print("Ekrana dokunuldu")
        view.endEditing(true)
    }
    
    @objc func tarihGoster(uiDatePicker : UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "MMM d, h:mm a"
        let alinanTarih = format.string(from: uiDatePicker.date)
        textFieldTarih.text = alinanTarih
    }
    
    @objc func saatGoster(uiDatePicker : UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "hh:mm"
        let alinanSaat = format.string(from: uiDatePicker.date)
        textFieldSaat.text = alinanSaat
    }
}

