//
//  ViewController.swift
//  Dentaku2
//
//  Created by jinikuadmin on 2016/12/11.
//  Copyright © 2016年 jinikuadmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextView!
    var num: String = "0"
    var intNum: Int = 0
    var result: Int = 0
    var numArray = [0]
    var activeBtn = false
//    var count: Int = 0
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnTapped(_ sender: UIButton) {
        if num == "0" {
            switch sender.tag {
                //AC:10 +:11 =:12
            case 0:
                resultTextView.text = "0"
                activeBtn = true
            case 1:
                num = "1"
                resultTextView.text = num
                activeBtn = true
            case 2:
                num = "2"
                resultTextView.text = num
                activeBtn = true
            case 3:
                num = "3"
                resultTextView.text = num
                activeBtn = true
            case 4:
                num = "4"
                resultTextView.text = num
                activeBtn = true
            case 5:
                num = "5"
                resultTextView.text = num
                activeBtn = true
            case 6:
                num = "6"
                resultTextView.text = num
                activeBtn = true
            case 7:
                num = "7"
                resultTextView.text = num
                activeBtn = true
            case 8:
                num = "8"
                resultTextView.text = num
                activeBtn = true
            case 9:
                num = "9"
                resultTextView.text = num
                activeBtn = true
            case 10:
                num = "0"
                resultTextView.text = num
                activeBtn = false
                numArray.removeAll()
            case 11:
                if activeBtn == true {
                    intNum = Int(resultTextView.text)!
                    numArray.append(intNum)
                    result = numArray.reduce(0, +)
                    resultTextView.text = String(result)
                    activeBtn = false
                    numArray.removeAll()
                    numArray.append(result)
                    num = "0"
                }else{
                    result = numArray.reduce(0, +)
                    resultTextView.text = String(result)
                    activeBtn = false
                    num = "0"
                }
            case 12:
                if activeBtn == true {
                    intNum = Int(resultTextView.text)!
                    numArray.append(intNum)
                    result = numArray.reduce(0, +)
                    resultTextView.text = String(result)
                    activeBtn = false
                    numArray.removeAll()
                    numArray.append(result)
                }else{
                    result = numArray.reduce(0, +)
                    resultTextView.text = String(result)
                    activeBtn = false
                }
            default:
                break
            }
        }
        else {
            switch sender.tag {
            case 0:
                num += "0"
                resultTextView.text = num
                activeBtn = true
            case 1:
                num += "1"
                resultTextView.text = num
                activeBtn = true
            case 2:
                num += "2"
                resultTextView.text = num
                activeBtn = true
            case 3:
                num += "3"
                resultTextView.text = num
                activeBtn = true
            case 4:
                num += "4"
                resultTextView.text = num
                activeBtn = true
            case 5:
                num += "5"
                resultTextView.text = num
                activeBtn = true
            case 6:
                num += "6"
                resultTextView.text = num
                activeBtn = true
            case 7:
                num += "7"
                resultTextView.text = num
                activeBtn = true
            case 8:
                num += "8"
                resultTextView.text = num
                activeBtn = true
            case 9:
                num += "9"
                resultTextView.text = num
                activeBtn = true
            case 10:
                num = "0"
                resultTextView.text = num
                activeBtn = false
                numArray.removeAll()
            case 11:
                if activeBtn == true {
                    intNum = Int(resultTextView.text)!
                    numArray.append(intNum)
                    result = numArray.reduce(0, +)
                    resultTextView.text = String(result)
                    activeBtn = false
                    numArray.removeAll()
                    numArray.append(result)
                    num = "0"
                }else{
                    result = numArray.reduce(0, +)
                    resultTextView.text = String(result)
                    activeBtn = false
                    num = "0"
                }
            case 12:
                if activeBtn == true {
                    intNum = Int(resultTextView.text)!
                    numArray.append(intNum)
                    result = numArray.reduce(0, +)
                    resultTextView.text = String(result)
                    activeBtn = false
                    numArray.removeAll()
                    numArray.append(result)
                }else{
                    result = numArray.reduce(0, +)
                    resultTextView.text = String(result)
                    activeBtn = false
                }
            default:
                break
            }
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

