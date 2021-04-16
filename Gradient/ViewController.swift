//
//  ViewController.swift
//  Gradient
//
//  Created by Joker on 4/16/21.
//  Copyright © 2021 Elena Prokofeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        let firstColor = #colorLiteral(red: 0.8661295573, green: 0.9861111111, blue: 0.8010525174, alpha: 0.7506956336).cgColor
        let secondColor = #colorLiteral(red: 1, green: 0.9710286458, blue: 0.9067925347, alpha: 0.8543717894).cgColor
        let thirdColor = #colorLiteral(red: 0.9220648872, green: 1, blue: 1, alpha: 1).cgColor
        let forthColor = #colorLiteral(red: 1, green: 0.9358995226, blue: 1, alpha: 1).cgColor
        let fifthColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [firstColor, secondColor, thirdColor, forthColor, firstColor]
        //view.layer.addSublayer(gradientLayer)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

