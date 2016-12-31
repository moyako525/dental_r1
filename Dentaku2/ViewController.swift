//
//  ViewController.swift
//  Dentaku2
//
//  Created by jinikuadmin on 2016/12/11.
//  Copyright © 2016年 jinikuadmin. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var resultTextView: UITextView!
    var num: String = "0"
    var stringNum: String = "0"
    var stringSymbol: String = ""
    var result: Double = 0
    var numArray = ["0"]
    var activeBtn = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func numberBtn(_ sender: UIButton) {
        if num == "0" {
            num = "\(sender.tag)"
            resultTextView.text = "\(sender.tag)"
        }else{
            num += "\(sender.tag)"
            resultTextView.text = num
        }
        activeBtn = true
    }
    
    @IBAction func btnTapped(_ sender: UIButton) {
        switch sender.tag {
            //AC:10 =:11 +:12 -:13 ×:14 ÷:15 %:16 +/-:17 .:18
            
        case 10:
            num = "0"
            resultTextView.text = num
            activeBtn = false
            self.numArray = ["0"]
        case 11:
            if activeBtn == true {
                stringNum = resultTextView.text
                if numArray.count == 1{
                    numArray[0] = stringNum
                    num = "0"
                }else{
                    numArray.append(stringNum)
                    switch numArray[1] {
                    case "+":
                        result = Double(numArray[0])! + Double(numArray[2])!
                    case "-":
                        result = Double(numArray[0])! - Double(numArray[2])!
                    case "×":
                        result = Double(numArray[0])! * Double(numArray[2])!
                    case "÷":
                        result = Double(numArray[0])! / Double(numArray[2])!
                    default:
                        break
                    }
                    stringNum = String(result)
                    if stringNum.hasSuffix(".0"){
                        let currentIndex = stringNum.index(stringNum.endIndex, offsetBy: -2)
                        stringNum = stringNum.substring(to:currentIndex)
                    }
                    resultTextView.text = stringNum
                    self.numArray = [String(result)]
                    num = "0"
                }
            }else{
                num = "0"
            }
        case 12,13,14,15:
            switch sender.tag {
            case 12:
                stringSymbol = "+"
            case 13:
                stringSymbol = "-"
            case 14:
                stringSymbol = "×"
            case 15:
                stringSymbol = "÷"
            default:
                break
            }
            if activeBtn == true {
                stringNum = resultTextView.text
                if numArray.count == 1{
                    numArray[0] = stringNum
                    numArray.append("\(stringSymbol)")
                    activeBtn = false
                    num = "0"
                    
                }else{
                    numArray.append(stringNum)
                    switch numArray[1]{
                    case "+":
                        result = Double(numArray[0])! + Double(numArray[2])!
                    case "-":
                        result = Double(numArray[0])! - Double(numArray[2])!
                    case "×":
                        result = Double(numArray[0])! * Double(numArray[2])!
                    case "÷":
                        result = Double(numArray[0])! / Double(numArray[2])!
                    default:
                        break
                    }
                    stringNum = String(result)
                    if stringNum.hasSuffix(".0"){
                        let currentIndex = stringNum.index(stringNum.endIndex, offsetBy: -2)
                        stringNum = stringNum.substring(to:currentIndex)
                    }
                    resultTextView.text = stringNum
                    activeBtn = false
                    self.numArray = [String(result)]
                    numArray.append("\(stringSymbol)")
                    num = "0"
                }
            }else{
                numArray.append("\(stringSymbol)")
                num = "0"
            }
        case 16:
            stringNum = resultTextView.text
            result = Double(stringNum)!/100
            stringNum = String(result)
            if stringNum.hasSuffix(".0"){
                let currentIndex = stringNum.index(stringNum.endIndex, offsetBy: -2)
                stringNum = stringNum.substring(to:currentIndex)
            }
            resultTextView.text = stringNum
            numArray = [String(result)]
            num = "0"
        case 17:
            stringNum = resultTextView.text
            result = Double(stringNum)! * (-1)
            stringNum = String(result)
            if stringNum.hasSuffix(".0"){
                let currentIndex = stringNum.index(stringNum.endIndex, offsetBy: -2)
                stringNum = stringNum.substring(to:currentIndex)
            }
            resultTextView.text = stringNum
            numArray = [String(result)]
            num = "0"
        case 18:
            num += "."
            resultTextView.text = num
            activeBtn = true
        default:
            break
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

