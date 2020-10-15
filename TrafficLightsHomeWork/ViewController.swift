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
        
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
        
        startNextButton.layer.cornerRadius = 10
    }

    @IBAction func startNextButtotPressed() {
        redLightView.alpha = 1
        startNextButton.setTitle("Next", for: .normal)
         if redLightView.alpha == 1 {
            redLightView.alpha = 0.2
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.2
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.2
            redLightView.alpha = 1
        }
    }
   
}
