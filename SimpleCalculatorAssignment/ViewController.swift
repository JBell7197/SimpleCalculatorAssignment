//
//  ViewController.swift
//  SimpleCalculatorAssignment
//
//  Created by Justin Bell on 10/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueOneTextField: UITextField!
    @IBOutlet weak var valueTwoTextField: UITextField!
    @IBOutlet weak var solutionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//    let valueOneNumber = Int(valueOneTextField.text)
    @IBAction func addButtonPressed(_ sender: Any) {
        guard let valueOneNumber = Int(valueOneTextField.text!) else{
            return
        }
        guard let valueTwoNumber = Int(valueTwoTextField.text!) else{
            return
        }
        let addNumbers = (valueOneNumber + valueTwoNumber)
        var changedAddedNumber = String(addNumbers)
        self.solutionLabel.text = changedAddedNumber
    }
    
    @IBAction func subtractButtonPressed(_ sender: Any) {
        guard let valueOneNumber = Int(valueOneTextField.text!) else{
            return
        }
        guard let valueTwoNumber = Int(valueTwoTextField.text!) else{
            return
        }
        let subtractNumbers = (valueOneNumber - valueTwoNumber)
        var changedSubtractedNumbers = String(subtractNumbers)
        self.solutionLabel.text = changedSubtractedNumbers
    }

    @IBAction func multiplyButtonPressed(_ sender: Any) {
        guard let valueOneNumber = Int(valueOneTextField.text!) else{
            return
        }
        guard let valueTwoNumber = Int(valueTwoTextField.text!) else{
            return
        }
        let multiplyNumbers = (valueOneNumber * valueTwoNumber)
        var changedMultipliedNumbers = String(multiplyNumbers)
        self.solutionLabel.text = changedMultipliedNumbers
    }
    
    @IBAction func divisionButtonPressed(_ sender: Any) {
        guard let valueOneNumber = Double(valueOneTextField.text!) else{
            return
        }
        guard let valueTwoNumber = Double(valueTwoTextField.text!) else{
            return
        }
        let divideNumbers = (valueOneNumber / valueTwoNumber)
        var changedDividedNumbers = String(divideNumbers)
        self.solutionLabel.text = changedDividedNumbers
    }
}

