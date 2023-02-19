//
//  ViewController.swift
//  assignment5
//
//  Created by Caitlin Johnson on 2/19/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    var amount : Int = 0
    var curLogic = CurrencyLogic()

    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func poundsSwitch(_ sender: UISwitch) {
        if sender.isOn {
            curLogic.setPoundsTrue()
        } else {
            curLogic.setPoundsFalse()
        }
    }
    @IBOutlet weak var amountInt: UITextField!
    
    @IBAction func eurosSwitch(_ sender: UISwitch) {
        if sender.isOn {
            curLogic.setEurosTrue()
        } else {
            curLogic.setEurosFalse()
        }
    }
    
    @IBAction func audSwitch(_ sender: UISwitch) {
        if sender.isOn {
            curLogic.setAudTrue()
        } else {
            curLogic.setAudFalse()
        }
    }
    
    @IBAction func yenSwitch(_ sender: UISwitch) {
        if sender.isOn {
            curLogic.setYenTrue()
        } else {
            curLogic.setYenFalse()
        }
    }
    
    
    @IBAction func calculatePress(_ sender: UIButton) {
        if (Int(amountInt.text!) == nil) {
            errorLabel.text = "Error: Integer Inputs Only"
        } else {
            errorLabel.text = ""
            amount = Int(amountInt.text!)!
            curLogic.calculate(amount: amount)
            performSegue(withIdentifier: "toCurrencyView", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let currencyView = segue.destination as! CurrencyView
        curLogic.createStrings()
        currencyView.amountUSD = curLogic.getUSD()
        currencyView.amountGBP = curLogic.getGBP()
        currencyView.amountEUR = curLogic.getEUR()
        currencyView.amountAUD = curLogic.getAUD()
        currencyView.amountJPY = curLogic.getJPY()

    }
    
}

