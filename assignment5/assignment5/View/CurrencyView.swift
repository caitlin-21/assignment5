//
//  CurrencyView.swift
//  assignment5
//
//  Created by Caitlin Johnson on 2/19/23.
//

import UIKit

class CurrencyView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        inputLabel.text = amountUSD
        gbpLabel.text = amountGBP
        eurLabel.text = amountEUR
        audLabel.text = amountAUD
        jpyLabel.text = amountJPY
        // Do any additional setup after loading the view.
    }
    
    var amountUSD : String = ""
    var amountGBP : String = ""
    var amountEUR : String = ""
    var amountAUD : String = ""
    var amountJPY : String = ""
    
    @IBOutlet weak var inputLabel: UILabel!
    
    @IBOutlet weak var gbpLabel: UILabel!
    
     @IBOutlet weak var audLabel: UILabel!
     @IBOutlet weak var eurLabel: UILabel!
     @IBOutlet weak var jpyLabel: UILabel!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
