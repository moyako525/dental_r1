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
    var count: Int = 0
    var num1: String = "0"
    var num2: String = "0"

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
            case 1:
                num = "1"
                resultTextView.text = num
            case 2:
                num = "2"
                resultTextView.text = "2"
            case 3:
                num = "3"
                resultTextView.text = "3"
            case 4:
                num = "4"
                resultTextView.text = "4"
            case 5:
                num = "5"
                resultTextView.text = "5"
            case 6:
                num = "6"
                resultTextView.text = "6"
            case 7:
                num = "7"
                resultTextView.text = "7"
            case 8:
                num = "8"
                resultTextView.text = "8"
            case 9:
                num = "9"
                resultTextView.text = "9"
            case 10:
                num = "0"
                resultTextView.text = "0"
            case 12:
                num2 = num
                var intNum1: Int = Int(num1)!
                var intNum2: Int = Int(num2)!
                var result:Int = intNum1 + intNum2
                resultTextView.text = String(result)
            default:
                break
            }
            count += 1
        }
        else {
            switch sender.tag {
            case 0:
                num += "0"
                resultTextView.text = num
            case 1:
                num += "1"
                resultTextView.text = num
            case 2:
                num += "2"
                resultTextView.text = num
            case 3:
                num += "3"
                resultTextView.text = num
            case 4:
                num += "4"
                resultTextView.text = num
            case 5:
                num += "5"
                resultTextView.text = num
            case 6:
                num += "6"
                resultTextView.text = num
            case 7:
                num += "7"
                resultTextView.text = num
            case 8:
                num += "8"
                resultTextView.text = num
            case 9:
                num += "9"
                resultTextView.text = num
            case 10:
                num = "0"
                resultTextView.text = num
            case 11:
                num1 = num
                num = "0"
                count += 1
            case 12:
                num2 = num
                var intNum1: Int = Int(num1)!
                var intNum2: Int = Int(num2)!
                var result:Int = intNum1 + intNum2
                resultTextView.text = String(result)
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

