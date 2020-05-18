//
//  ViewController.swift
//  Traffic light signal
//
//  Created by Виталий Сосин on 19.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redColorLabel: UIView!
    @IBOutlet weak var yellowColorLabel: UIView!
    @IBOutlet weak var greenColorLabel: UIView!
    @IBOutlet weak var startButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorLabel.alpha = 0.3
        redColorLabel.layer.cornerRadius = 50
        
        yellowColorLabel.alpha = 0.3
        yellowColorLabel.layer.cornerRadius = 50
        
        greenColorLabel.alpha = 0.3
        greenColorLabel.layer.cornerRadius = 50
    }

    @IBAction func startButtonAction() {
        
        if redColorLabel.alpha < 1 {
            redColorLabel.alpha = 1
            startButtonLabel.setTitle("NEXT", for: .normal)
            
        } else if yellowColorLabel.alpha < 1{
            yellowColorLabel.alpha = 1
            
        } else if greenColorLabel.alpha < 1 {
            greenColorLabel.alpha = 1
            
        } else if greenColorLabel.alpha == 1 {
            redColorLabel.alpha = 0.3
            yellowColorLabel.alpha = 0.3
            greenColorLabel.alpha = 0.3
            startButtonLabel.setTitle("Start", for: .normal)
        }
    }
}

