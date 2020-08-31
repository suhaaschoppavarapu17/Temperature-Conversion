//
//  ViewController.swift
//  Assignment6
//
//  Created by Suhaas Choppavarapu on 8/28/20.
//  Copyright © 2020 Suhaas Choppavarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var showTemparatureLabel: UILabel!
    
    @IBOutlet weak var temparatureTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(red: 0.98, green: 0.83, blue: 0.76, alpha: 1.00)
        showTemparatureLabel.text = ""
        submitButton.backgroundColor = UIColor.lightGray
        temparatureTextField.keyboardType = .decimalPad
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        temparatureTextField.resignFirstResponder()
        
        let selectedIndex = segmentedControl.selectedSegmentIndex
        let valueInCelsius = Double(temparatureTextField.text!) ?? 0.0
        let valueInFahrenheit = Double(temparatureTextField.text!) ?? 0.0
        
        if selectedIndex == 0 {
            let doubleToString = String(valueInCelsius)
            showTemparatureLabel.text = doubleToString
        } else {
            let doubleToString = String(valueInCelsius)
            showTemparatureLabel.text = doubleToString
        }
        
        if valueInCelsius < 1{
            view.backgroundColor = UIColor.init(red: 0.33, green: 0.00, blue: 0.92, alpha: 1.00)
            print(valueInCelsius)
        } else if valueInCelsius >= 1 && valueInCelsius < 10{
            view.backgroundColor = UIColor.init(red: 0.07, green: 0.45, blue: 0.80, alpha: 1.00)
            print(valueInCelsius)
        } else if valueInCelsius >= 10 && valueInCelsius < 25{
            view.backgroundColor = UIColor.init(red: 0.75, green: 0.85, blue: 0.86, alpha: 1.00)
            print(valueInCelsius)
        } else if valueInCelsius >= 25 && valueInCelsius < 40{
            view.backgroundColor = UIColor.init(red: 0.99, green: 0.80, blue: 0.00, alpha: 1.00)
            print(valueInCelsius)
        } else if valueInCelsius >= 40 && valueInCelsius < 50{
            view.backgroundColor = UIColor.systemOrange
            print(valueInCelsius)
        } else if valueInCelsius >= 50 {
            view.backgroundColor = UIColor.init(red: 0.72, green: 0.00, blue: 0.00, alpha: 1.00)
            print(valueInCelsius)
        }
        
//        if valueInFahrenheit < 33.8{
//            view.backgroundColor = UIColor.init(red: 0.33, green: 0.00, blue: 0.92, alpha: 1.00)
//        } else if valueInFahrenheit >= 33.8 && valueInFahrenheit < 50{
//            view.backgroundColor = UIColor.init(red: 0.07, green: 0.45, blue: 0.80, alpha: 1.00)
//        } else if valueInFahrenheit >= 50 && valueInFahrenheit < 77{
//            view.backgroundColor = UIColor.init(red: 0.75, green: 0.85, blue: 0.86, alpha: 1.00)
//        } else if valueInFahrenheit >= 77 && valueInFahrenheit < 104{
//            view.backgroundColor = UIColor.init(red: 0.99, green: 0.80, blue: 0.00, alpha: 1.00)
//        } else if valueInFahrenheit >= 104 && valueInFahrenheit < 122{
//            view.backgroundColor = UIColor.systemOrange
//        } else if valueInFahrenheit >= 122 {
//            view.backgroundColor = UIColor.init(red: 0.72, green: 0.00, blue: 0.00, alpha: 1.00)
//        }
    }
    
    @IBAction func segmentedControlTapped(_ sender: Any) {
        
        temparatureTextField.text = ""
        
        let selectedIndex = segmentedControl.selectedSegmentIndex
        let valueInCelsius = Double(temparatureTextField.text!) ?? 0.0
        let valueInFahrenheit = Double(temparatureTextField.text!) ?? 0.0
        
        switch selectedIndex {
        case 0:
            let doubleToString = String(valueInCelsius)
            showTemparatureLabel.text = doubleToString
            
            let farenhiet = (valueInFahrenheit - 32) / 1.8
            let doubleToString1 = String(farenhiet)
            showTemparatureLabel.text = doubleToString1
            
        default:
            let doubleToString1 = String(valueInFahrenheit)
            showTemparatureLabel.text = doubleToString1
            
            let farenhiet = (valueInCelsius * 1.8) + 32.0
            let doubleToString = String(farenhiet)
            showTemparatureLabel.text = doubleToString
        }
    }
}

