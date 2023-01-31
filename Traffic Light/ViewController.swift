//
//  ViewController.swift
//  Traffic Light
//
//  Created by Artyom on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trafficLightSignalRed: UIView!
    @IBOutlet weak var trafficLightSignalYellow: UIView!
    @IBOutlet weak var trafficLightSignalGreen: UIView!
    @IBOutlet weak var trafficLightButton: UIButton!
    var currentSignal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightSignalRed.layer.cornerRadius = 85
        trafficLightSignalYellow.layer.cornerRadius = 85
        trafficLightSignalGreen.layer.cornerRadius = 85
        trafficLightButton.layer.cornerRadius = 10
        trafficLightButton.configuration = setupButton(with: "START")
    }
    
    
    @IBAction func trafficLightButtonAction() {
        trafficLightButton.setTitle("NEXT", for: .normal)
        
        if currentSignal == 0 {
            trafficLightSignalRed.alpha = 1
            trafficLightSignalGreen.alpha = 0.5
            currentSignal = 1
        } else if (currentSignal == 1) {
            trafficLightSignalYellow.alpha = 1
            trafficLightSignalRed.alpha = 0.5
            currentSignal = 2
        } else if (currentSignal == 2) {
            trafficLightSignalGreen.alpha = 1
            trafficLightSignalYellow.alpha = 0.5
            currentSignal = 0
        }
        
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        
        return buttonConfiguration
    }
}

