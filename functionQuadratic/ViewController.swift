//
//  ViewController.swift
//  functionQuadratic
//
//  Created by Brooke Pulling on 9/18/18.
//  Copyright © 2018 Brooke Pulling. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = ""
        self.hideKeyboardWhenTapped()
        self.aTextField.delegate = self
        self.bTextField.delegate = self
        self.cTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func computeRoots(a:Float,b:Float,c:Float){
        let discriminant = b*b - 4*a*c
        print(discriminant)
        if discriminant < 0 {
            print("no real roots, the discriminant is \(discriminant)")
            resultLabel.text = "No real roots; the discriminant is \(discriminant)."
        }
        else{
            print("your discrimant is \(discriminant). it is larger than zero, so the vertex of this parabola above the x axis")
            let numerator1 = -1*b + discriminant.squareRoot()
            let numerator2 = -1*b - discriminant.squareRoot()
            let answer1 = numerator1/(2*a)
            let answer2 = numerator2/(2*a)
            print("the roots are \(answer1),\(answer2)")
            
            resultLabel.text = "The roots are \(answer1) and \(answer2). \n\nThe discriminant is \(discriminant)."
        }
        
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        // unwraps the text from the text field (.text)
        if let aString = aTextField.text {
            //unwraps the float conversion
            if let a = Float(aString){
                //unwrap the text from the next text field
                if let bString = bTextField.text {
                    if let b = Float(bString){
                        if let cString = cTextField.text{
                            if let c = Float(cString){
                                print(a*b*c)
                                computeRoots(a:a,b:b,c:c)
                            }
                        }
                    }
                }
                
            }
           
        }
        
    }
    
}

