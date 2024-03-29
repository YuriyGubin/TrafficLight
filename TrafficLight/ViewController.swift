//
//  ViewController.swift
//  TrafficLight
//
//  Created by Yuriy on 09.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    private var currentColor = CurrentColor.red
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        greenView.layer.cornerRadius = greenView.frame.size.width / 2
    }
    
    
    @IBAction func switchButtonPressed() {
        
        if switchButton.currentTitle == "START" {
            switchButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentColor {
        case .red:
            redView.alpha = lightIsOn
            greenView.alpha = lightIsOff
            currentColor = .yellow
        case .yellow:
            yellowView.alpha = lightIsOn
            redView.alpha = lightIsOff
            currentColor = .green
        case .green:
            greenView.alpha = lightIsOn
            yellowView.alpha = lightIsOff
            currentColor = .red
        }
    }
    
    private func setupViews() {
        switchButton.layer.cornerRadius = 10
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
    }
}

extension ViewController {
    private enum CurrentColor {
        case red, yellow, green
    }
}
