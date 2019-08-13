//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Mohamed on 8/13/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
    
        datePicker.addTarget(self, action: #selector(makeChanged(datePicker:)), for: .valueChanged)
        textField.inputView = datePicker
        
    }
    
    
    @objc func makeChanged(datePicker:UIDatePicker){
        
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "MM/DD/YY"
        textField.text = dateFormat.string(from: datePicker.date)
        view.endEditing(true)
        
    }
    


}

