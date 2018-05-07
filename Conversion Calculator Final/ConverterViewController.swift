//
//  ConverterViewController.swift
//  Conversion Calculator Final
//
//  Created by Olivia Bishop on 5/7/18.
//  Copyright © 2018 Olivia Bishop. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    var inputValue: String = ""
    var outputValue: String = ""
    var from = " "
    var on = 0
    
    
    @IBOutlet var outputDisplay: UITextField!
    
    @IBOutlet var inputDisplay: UITextField!
    
    @IBOutlet var numbers: [UIButton]!
    
   
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        inputValue = inputValue + sender.currentTitle!
        inputDisplay.text = inputValue
        
        switch on {
        case 0:
            inputDisplay.text = inputValue + Conversions.init().inputUnit[0]
            outputDisplay.text = Conversions.init().outputUnit[0]
            if Conversions.init().inputUnit[0] == from {
                calculate()
            }
            
        case 1:
            inputDisplay.text = inputValue + Conversions.init().inputUnit[1]
            outputDisplay.text = Conversions.init().outputUnit[1]
            if Conversions.init().inputUnit[1] == from {
                calculate()
            }
            
        case 2:
            inputDisplay.text = inputValue + Conversions.init().inputUnit[2]
            outputDisplay.text = Conversions.init().outputUnit[2]
            if Conversions.init().inputUnit[2] == from {
                calculate()
            }
            
        case 3:
            inputDisplay.text = inputValue + Conversions.init().inputUnit[3]
            outputDisplay.text = Conversions.init().outputUnit[3]
            if Conversions.init().inputUnit[3] == from {
                calculate()
            }
            
        default:
            break
        }
        
        
        
        
        
        
        
        
    }
    
    
        
        
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
}
    
    @IBAction func converterButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        
        
        alert.addAction(UIAlertAction(title: Conversions.init().labels[0], style: UIAlertActionStyle.default, handler: { (alertAction) -> Void in
            self.inputDisplay.text = self.inputValue + Conversions.init().inputUnit[0]
            self.from = "°F"
            self.calculate()
            self.on = 0
            
        }))
        alert.addAction(UIAlertAction(title: Conversions.init().labels[1], style: UIAlertActionStyle.default, handler: { (alertAction) -> Void in
            self.inputDisplay.text = self.inputValue + Conversions.init().inputUnit[1]
            self.from = "°C"
            self.calculate()
            self.on = 1
            
        }))
        alert.addAction(UIAlertAction(title: Conversions.init().labels[2], style: UIAlertActionStyle.default, handler: { (alertAction) -> Void in
            self.inputDisplay.text = self.inputValue + Conversions.init().inputUnit[2]
            self.from = "mi"
            self.calculate()
            self.on = 2
            
        }))
        alert.addAction(UIAlertAction(title: Conversions.init().labels[3], style: UIAlertActionStyle.default, handler: { (alertAction) -> Void in
            self.inputDisplay.text = self.inputValue + Conversions.init().inputUnit[3]
            self.from = "km"
            self.calculate()
            self.on = 3
        }))
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    func calculate() {
        
        var input: Double {
            return Double(inputValue) ?? 0.0
        }
        
        
        switch from {
        case "°F":
            outputValue = fahrenheitToCelcius(farenheit: input)
            self.outputDisplay.text = outputValue
        case "°C":
            outputValue = celciusToFahrenheit(celcius: input)
            self.outputDisplay.text = outputValue
        case "km":
            outputValue = kilometeresToMiles(kilometers: input)
            self.outputDisplay.text = outputValue
        case "mi":
            outputValue = milesToKilometers(miles: input)
            self.outputDisplay.text = outputValue
            
        default:
            break
        }
    }
        
   
    
    
    @IBAction func clearButton(_ sender: Any) {
        
        
        self.inputValue.removeAll()
        self.outputValue.removeAll()
        self.inputDisplay.text = inputValue + Conversions.init().inputUnit[on]
        self.outputDisplay.text = outputValue + Conversions.init().outputUnit[on]
        
        
        
    }
    
   
    
    @IBAction func decimalButton(_ sender: Any) {
        
        if inputValue.contains(".") {
            return
        }
        
        if inputValue.isEmpty {
            inputValue += "0."
        } else {
            inputValue += "."
        }
        
        
    }
    
    
    @IBAction func plusMinusButton(_ sender: Any) {
        
        if inputValue.contains("-") {
            if let i = inputValue.index(of: "-") {
                inputValue.remove(at: i)
            }
        } else {
            inputValue = "-" + inputValue
        }
        
        
        
        
    }
    
    
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    



