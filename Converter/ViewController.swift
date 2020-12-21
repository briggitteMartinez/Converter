//
//  ViewController.swift
//  Converter
//
//  Created by Briggitte Quintero Martinez on 2020-12-21.
//

import UIKit



class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    

    @IBOutlet weak var temperatureLabel: UILabel!
    
    private var temperatureValues = (-100...100).map{$0}//[Int]()
    
    let coverter = CelsiusConverter()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        for index in  -100...100 {
            temperatureValues.append(index)
        }
        */
        
        temperatureLabel.text = "0 °F"
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temperatureValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ("\(temperatureValues[row]) °C")
    }
    

    

}

