//
//  HomeViewController.swift
//  hw2
//
//  Created by User02 on 2019/4/18.
//  Copyright © 2019 User02. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var backgroundView: UIView!
    @IBOutlet var sportImage: SharpImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = backgroundView.bounds
        gradientLayer.colors = [UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1.0).cgColor, UIColor(red: 109/255, green: 213/255, blue: 250/255, alpha: 1.0).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        backgroundView.layer.addSublayer(gradientLayer)
 
        sportImage.image = UIImage(named: "home")
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
