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
        let firstColor = #colorLiteral(red: 0.8927571097, green: 0.9861111111, blue: 0.9197431438, alpha: 1).cgColor
        let secondColor = #colorLiteral(red: 1, green: 0.9710286458, blue: 0.9067925347, alpha: 0.8543717894).cgColor
        let thirdColor = #colorLiteral(red: 0.9220648872, green: 1, blue: 1, alpha: 1).cgColor
        let forthColor = #colorLiteral(red: 0.9906512106, green: 0.9572585587, blue: 1, alpha: 1).cgColor
        let fifthColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [ fifthColor, secondColor, firstColor, thirdColor, forthColor, fifthColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.locations = [0.1, 0.25, 0.4, 0.6, 0.8, 0.9, 1.0]
        //view.layer.addSublayer(gradientLayer)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

