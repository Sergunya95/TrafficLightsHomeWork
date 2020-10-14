//
//  ViewController.swift
//  TrafficLightsHomeWork
//
//  Created by apple on 10/14/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.2
        yellowLightView.alpha = 0.2
        greenLightView.alpha = 0.2
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        startNextButton.layer.cornerRadius = 10
    }

    @IBAction func startNextButtotPressed() {
        if redLightView.alpha == 0.2,
           yellowLightView.alpha == 0.2,
           greenLightView.alpha == 0.2 {
        } else {
            redLightView.alpha = 1
            startNextButton.setTitle("Next", for: .normal)
        };
        /*if redLightView.alpha == 1,
              yellowLightView.alpha == 0.2,
              greenLightView.alpha == 0.2 {
        } else {
            redLightView.alpha = 0.2
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.2
        } */
    
    }
    
}

