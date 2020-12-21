//
//  ViewController.swift
//  Converter
//
//  Created by Briggitte Quintero Martinez on 2020-12-21.
//

import UIKit



class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    

    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var celsiusPicker: UIPickerView!
    
    private let userDefaultsRowKey = "defaultsPickerRow"
    
    
    private var temperatureValues = (-100...100).map{$0 * -1}//[Int]()
    
    let converter = CelsiusConverter()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        for index in  -100...100 {
            temperatureValues.append(index)
        }
        */
        let defaultPickerRow = initialPickerRow()
        
        celsiusPicker.selectRow(defaultPickerRow, inComponent: 0, animated: false)
        pickerView(celsiusPicker, didSelectRow: defaultPickerRow, inComponent: 0)
        
        //temperatureLabel.text = "0 °F"
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let degreeC = temperatureValues[row]
        let degreeF = converter.degreesFarenheit(degreeCelsius: degreeC)
        
        temperatureLabel.text = "\(degreeF) °F"
        
        savedSelected(row: row)
    }
    
    func initialPickerRow() -> Int {
        
        let savedRow = UserDefaults.standard.object(forKey: userDefaultsRowKey) as? Int
        
        if let row = savedRow{
            return row
        }else{
            return temperatureValues.count / 2
        }
    }

    func savedSelected(row: Int){
        let defaults = UserDefaults.standard
        defaults.set(row, forKey: userDefaultsRowKey)
        defaults.synchronize()
    }
}

