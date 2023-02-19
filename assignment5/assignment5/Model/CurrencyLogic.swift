//
//  CurrencyLogic.swift
//  assignment5
//
//  Created by Caitlin Johnson on 2/19/23.
//

import Foundation

struct CurrencyLogic {
    var poundsY : Bool = true
    var eurosY : Bool = true
    var audY : Bool = true
    var yenY : Bool = true
    var amountPounds : Float = 0.0
    var amountEuros : Float = 0.0
    var amountAud : Float = 0.0
    var amountYen : Float = 0.0
    var amountUsd : Float = 0.0
    var amountGBP : String = ""
    var amountEUR : String = ""
    var amountAUD : String = ""
    var amountJPY : String = ""
    var amountUSD : String = ""
    
    mutating func setPoundsTrue() {
        poundsY = true
    }
    mutating func setPoundsFalse() {
        poundsY = false
    }
    mutating func setEurosTrue() {
        eurosY = true
    }
    mutating func setEurosFalse() {
        eurosY = false
    }
    mutating func setAudTrue() {
        audY = true
    }
    mutating func setAudFalse() {
        audY = false
    }
    mutating func setYenTrue() {
        yenY = true
    }
    mutating func setYenFalse() {
        yenY = false
    }
    mutating func calculate(amount : Int){
        amountPounds = Float(amount) * 0.83
        amountEuros = Float(amount) * 0.94
        amountAud = Float(amount) * 1.46
        amountYen = Float(amount) * 134.27
        amountUsd = Float(amount)
    }
    mutating func createStrings() {
        amountUSD = String(format:"Input USD: %.2f", amountUsd)
        if poundsY {
            amountGBP = String(format:"GBP (Great Britain): %.2f", amountPounds)
        }
        if eurosY {
            amountEUR = String(format:"EUR (Euros): %.2f", amountEuros)
        }
        if audY {
            amountAUD = String(format:"AUD (Australia): %.2f", amountAud)
        }
        if yenY {
            amountJPY = String(format:"JPY (Japan): %.2f", amountYen)
        }
    }
    func getGBP() -> String {
        return amountGBP
    }
    func getEUR() -> String {
        return amountEUR
    }
    func getAUD() -> String {
        return amountAUD
    }
    func getJPY() -> String {
        return amountJPY
    }
    func getUSD() -> String {
        return amountUSD
    }
}
