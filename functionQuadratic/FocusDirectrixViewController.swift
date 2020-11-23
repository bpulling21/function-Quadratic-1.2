//
//  FocusDirectrixViewController.swift
//  functionQuadratic
//
//  Created by Brooke Pulling on 10/27/18.
//  Copyright © 2018 Brooke Pulling. All rights reserved.
//

import UIKit

class FocusDirectrixViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var aInput: UITextField!
    @IBOutlet weak var bInput: UITextField!
    @IBOutlet weak var cInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        self.hideKeyboardWhenTapped()
        self.aInput.delegate = self
        self.bInput.delegate = self
        self.cInput.delegate = self

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           return true
       }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func computeDirectrix(a:Float, b:Float, c:Float){
////        we have already unwrapped the a, b, c textfields and turned them into floats
////        in this function, we should use math to solve for the directrix of the parabola
////        ideally, we will have a line directrix(y= ) or something else, and a focus (x, y)
//        print(a,b,c)
//        let directrix = -(1/(4*a))
//        print(directrix)
//        resultLabel.text = "y = " + String(directrix)
//    }
//
//     func computeFocus(a:Float, b:Float, c:Float) {
//        let directrix = -(1/(4*a))
//        let xFocus = -b/(2 * a)
//        // let yF
//    }
//
    @IBAction func calcButtonTapped(_ sender: Any) {
        // Guard statement to get contents of text field
        guard let aString = aInput.text else {
            return
        }
        // Guard statement to convert the text
        guard let a = Float(aString) else {
            resultLabel.text = "Please enter a valid number in text field a"
            return
        }
        // Guard statements unwrapping b input
        guard let bString = bInput.text else{
            return
        }
        guard let b = Float(bString) else{
            resultLabel.text = "Please enter a valid number in text field b"
            return
        }
        //Guard statements unwrapping c input
        guard let cString = cInput.text else{
            return//if it can't be unwrapped, then return to main class
        }
        guard let c = Float(cString) else {
            resultLabel.text = "Please enter a valid number in text field c"
            return
        }
        
        let myParabola = Parabola(a: a, b: b, c: c)
//        myParabola.convertVertexForm()
        //print(myParabola.h ?? 100)
        //print(myParabola.k ?? 100)
        print(myParabola.directrix ?? 100)
       // print(myParabola.focusX ?? 100)
       // print(myParabola.focusY ?? 100)
        
        
        
        resultLabel.text = "Directrix: y = " + String(myParabola.returnDirectrix()) + "\n  Focus: ( " + String(myParabola.returnFocusX()) + ", " + String(myParabola.returnFocusY()) + " )"
        
        
        
        
     
    
        
        
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
