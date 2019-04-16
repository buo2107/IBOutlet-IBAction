//
//  ViewController.swift
//  hw2
//
//  Created by User02 on 2019/4/16.
//  Copyright © 2019 User02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var heightField: UITextField!
    @IBOutlet var weightField: UITextField!
    @IBOutlet var BMILabel: UILabel!
    @IBOutlet var startButton: UIButton!
    @IBOutlet var sportImage: UIImageView!
    @IBOutlet var sportButtonSwitch: UISwitch!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func calculateBMI(_ sender: Any) {
        var height:Double = 0.0
        var weight:Double = 0.0
        var bmi:Double = 0.0
        
        if(heightField.text != nil)
        {
            height = Double(heightField.text!)!/100
            weight = Double(weightField.text!)!
            bmi = weight/(height*height)
            BMILabel.text = String(format: "%.1f", bmi)
        }
        
        changeDescriptionAndImage(bmi)
    }
    
    func changeDescriptionAndImage(_ bmi:Double) {
        
        if (bmi < 24)
        {
            if(bmi < 18.5) {
                descriptionLabel.text = "別動了！您必須多吃幾頓飯！"
            }
            else {
                descriptionLabel.text = "Good~標準身材！"
            }
            //food image
        }
        else if (bmi >= 24)
        {
            if(bmi < 27) {
                descriptionLabel.text = "喔喔！您得控制一下飲食了，請加油！"
            }
            else if(bmi >= 27 && bmi < 30) {
                descriptionLabel.text = "輕微肥胖還有救的！請別放棄治療！"
            }
            else if(bmi >= 30 && bmi < 35) {
                descriptionLabel.text = "中度肥胖"
            }
            else if(bmi >= 35) {
                descriptionLabel.text = "請您準時收看<沈重人生>"
            }
            // cannot eat image
        }
    }
}

