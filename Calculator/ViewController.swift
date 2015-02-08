//
//  ViewController.swift
//  Calculator
//
//  Created by misha birman1 on 2/8/15.
//  Copyright (c) 2015 misha birman. All rights reserved.
//

import UIKit

enum Operator:String{
    case Plus = "+"
    case Minus = "-"
    
}


class ViewController: UIViewController {
    var waves = [String]()
    var op3:Int!
    var op1 = [Int]()
    var op2 = [Int]()
    
    
    var val1:Int!
    var val2:Int!
    var sign:String!
    
    @IBOutlet weak var Result: UITextField!
    
    func add(value:Int){
        op1.append(value)
    
    }
    
    @IBAction func Button1(sender: UIButton) {
        Result.text = Result.text + "1"
    }
    
    
    @IBAction func Button2(sender: UIButton) {
        Result.text = Result.text + "2"
    }
    
    
    @IBAction func Button3(sender: UIButton) {
        Result.text = Result.text + "3"
    }
    
    @IBAction func ButtonPlus(sender: UIButton) {
        sign = "+"
        let x : Int? = Result.text.toInt()
        if (x != nil)
        {
            val1 = x!
        }
        Result.text = ""
    }
    
    
    @IBAction func ButtonMinus(sender: UIButton) {
        sign = "-"
        let x : Int? = Result.text.toInt()
        if (x != nil)
        {
            val1 = x!
        }
        Result.text = ""
    }
    
    @IBAction func ButtonClear(sender: UIButton) {
        val1 = 0;
        val2 = 0;
        sign = ""
        Result.text = "0";
    }
    
    
    @IBAction func ButtonEqual(sender: UIButton) {
        var res:Int!
        
        let x : Int? = Result.text.toInt()
        if (x != nil)
        {
            val2 = x!
        }
        
        if (sign == "+")
        {
            res = val1 + val2
        }
        
        else if (sign == "-")
        {
            res = val1 - val2
        }
        Result.text = String(res);
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

