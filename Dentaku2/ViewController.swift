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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnTapped(_ sender: UIButton) {
            switch sender.tag {
            case 0:
                resultTextView.text = "0"
            case 1:
                num += "1"
                resultTextView.text = num
            case 2:
                resultTextView.text = "2"
            case 3:
                resultTextView.text = "3"
            case 4:
                resultTextView.text = "4"
            case 5:
                resultTextView.text = "5"
            case 6:
                resultTextView.text = "6"
            case 7:
                resultTextView.text = "7"
            case 8:
                resultTextView.text = "8"
            case 9:
                resultTextView.text = "9"
            default:
                break
            }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

