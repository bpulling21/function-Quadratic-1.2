//
//  PolarViewController.swift
//  functionQuadratic
//
//  Created by Brooke Pulling on 10/7/18.
//  Copyright © 2018 Brooke Pulling. All rights reserved.
//

import UIKit

class PolarViewController: UIViewController, UITextFieldDelegate {
//object names
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var theSwitch: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var degreeSwitch: UISwitch!
    
    //built-in functions
    override func viewDidLoad() {
       super.viewDidLoad()
        if (theSwitch.isOn){
            print("the switch is on!")
            label1.text = "x"
            label2.text = "y"
        self.hideKeyboardWhenTapped()
        self.textField1.delegate = self
        self.textField2.delegate = self
        }
        else{
            print("the switch is not on")
            label1.text = "r"
            label2.text = "θ"
        }

        // Do any additional setup after loading the view.
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           return true
       }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//custom functions!
   
    @IBAction func switchSwapped(_ sender: Any) {
        if (theSwitch.isOn){
            print("the switch is on!")
            label1.text = "x"
            label2.text = "y"
        }
        else{
            print("the switch is not on")
            label1.text = "r"
            label2.text = "θ"
        }
        
    }
    
    @IBAction func degreeSwitchTapped(_ sender: Any) {
        if (degreeSwitch.isOn){
            
        }
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("hello!")
        if let value1 = textField1.text{
            if let value2 = textField2.text{
                if let float1 = Float(value1) {
                    if let float2 = Float(value2){
                        if theSwitch.isOn {
                            print("converting from rectangular to polar")
                            convertRectangularToPolar(x: float1, y: float2)
                        } else {
                            print("converting from polar to rectangular")
                            convertPolarToRectangular(r: float1, theta: float2 )
                        }
                        print(float1 * float2)
                    }
                }
            }
        }
    
        
    }
    
    func convertRectangularToPolar(x: Float, y: Float){
        print("x = \(x), y = \(y)")
        let r = sqrtf((x * x) + (y * y))
        var theta = asin(y/r) * 180 / Float.pi
        print(r, theta)
        // Correct for ambiguous arcsine cases
        if x < 0 {
            theta = 180 - theta
        }
        // print final result, depending on angle mode
        if degreeSwitch.isOn{
            resultLabel.text = "r = \(r) \n θ = \(theta)°"
        }
        else{
            theta = theta * Float.pi / 180
            resultLabel.text = "r = \(r) \n θ = \(theta)"
        }
       
    }
    func convertPolarToRectangular(r: Float, theta: Float){
        var finalTheta: Float = theta
        var x: Float
        var y: Float
        if degreeSwitch.isOn{
            finalTheta = theta * Float.pi / 180
            x = r * cos(finalTheta)
            y = r * sin(finalTheta)
        }
        else{
            x = r * cos(theta)
            y = r * sin(theta)
        }
        x = roundf(10000*x)/10000
        y = roundf(10000*y)/10000
        resultLabel.text = "x = \(x) \n y = \(y)"
        
    }
}
