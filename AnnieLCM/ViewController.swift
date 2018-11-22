//
//  ViewController.swift
//  AnnieLCM
//
//  Created by HsinYuLi on 2018/11/22.
//  Copyright © 2018 laalee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var firstNumberTextField: UITextField!

    @IBOutlet weak var secondNumberTextField: UITextField!

    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculateLCM(_ sender: Any) {

        guard let text1 = firstNumberTextField.text,
              let text2 = secondNumberTextField.text,
              let num1 = checkNumber(text: text1),
              let num2 = checkNumber(text: text2) else {

                updateResult(text: "Please insert non-negative integers.")

                return
        }

        let lcm = getLCM(num1: num1, num2: num2)

        updateResult(text: String(lcm))
    }

    func checkNumber(text: String) -> Int? {

        guard let num = Int(text), num > 0 else {

            updateResult(text: "Please insert non-negative integers.")

            return nil
        }

        return num
    }

    func getLCM(num1: Int, num2: Int) -> Int {

        let gcd = getGCD(num1: num1, num2: num2)

        return (num1 * num2) / gcd
    }

    func getGCD(num1: Int, num2: Int) -> Int {

        var big = num1

        var small = num2

        if num1 < num2 {

            big = num2

            small = num1
        }

        var gcd = small

        var remainder = big % small

        while (remainder != 0) {

            big = gcd

            small = remainder

            remainder = big % small

            gcd = small
        }

        return gcd
    }

    func updateResult(text: String) {

        if let label = self.resultLabel {

            label.text = text
        }
    }

}

