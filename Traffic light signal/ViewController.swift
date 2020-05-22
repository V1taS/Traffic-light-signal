//
//  ViewController.swift
//  Traffic light signal
//
//  Created by Виталий Сосин on 19.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDafault()
    }
    
    override func viewWillLayoutSubviews() {
        
        cornerRadius()
    }
    
    @IBAction func buttonAction() {
        
        buttonOutlet.setTitle("NEXT", for: .normal)
        
        switch currentLight {
            
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenView.alpha = lightIsOn
            yellowView.alpha = lightIsOff
            currentLight = .red
        }
    }
    
    private func setDafault() {
        
        buttonOutlet.layer.cornerRadius = 10
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
    }
    
    private func cornerRadius() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
}
