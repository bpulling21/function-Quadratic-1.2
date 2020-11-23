//
//  UIviewController+extension.swift
//  functionQuadratic
//
//  Created by Brooke Pulling on 11/23/20.
//  Copyright © 2020 Brooke Pulling. All rights reserved.
//
import UIKit
import Foundation

extension UIViewController{
    //when the keyboard is up, and you tap outside, the keyboard disappears
    func hideKeyboardWhenTapped() {
        let tap = UITapGestureRecognizer(target: self, action: #selector (UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    // actual part that makes the keyboard disappear
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}

