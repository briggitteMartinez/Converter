//
//  ViewController.swift
//  Converter
//
//  Created by Briggitte Quintero Martinez on 2020-12-21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    

}

