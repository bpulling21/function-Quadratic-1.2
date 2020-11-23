//
//  UnitCirlceViewController.swift
//  functionQuadratic
//
//  Created by Brooke Pulling on 1/8/19.
//  Copyright © 2019 Brooke Pulling. All rights reserved.
//

import UIKit

class UnitCircleViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return angles.count
    }
    
    @IBOutlet weak var anglePickerView: UIPickerView!
    @IBOutlet weak var unitCircleResultLabel: UILabel!
    @IBOutlet weak var blueHighlightImageView: UIImageView!
    var previousRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        anglePickerView.dataSource = self
        anglePickerView.delegate = self
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return (angles[row].degrees + "   " + "   " + angles[row].radians)
    }

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("you selected" + String(row))
        unitCircleResultLabel.text = "(" + angles[row].x + ", " + angles[row].y + ")"
        print("blue highlight should rotate:"  )
        print(angles[row].radAsDecimal())
//        blueHighlightImageView.transform = blueHighlightImageView.transform.rotated(by: -1 * ((angles[row].radAsDecimal()) - (angles[previousRow].radAsDecimal())))
        blueHighlightImageView.transform = CGAffineTransform(rotationAngle: -1 * angles[row].radAsDecimal())
//        previousRow = row
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
