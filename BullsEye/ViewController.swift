//
//  ViewController.swift
//  BullsEye
//
//  Created by TJ Oluotch on 31/01/2018.
//  Copyright © 2018 TJ Oluotch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0;
    var targetValue: Int = 0;
    // tells interface builder that you now have a variable
    // slider that can be connected to a UISlider object.
    
    // interface builder likes to call these variables outlets
    // outlets have to be connected to something on the storyboard
    @IBOutlet weak var slider: UISlider!
    //outlet for target score player is aiming for.
    // top right label in storyboard
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // added current value back to view loader when the app starts
        // this is part of the modification so that slider starts
        // at 50
        currentValue = 50;
        startNewRound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello, World",
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        // new round started in game
        startNewRound()
        
    }
    // interface builder likes to call methods actions
    @IBAction func sliderMoved(_slider: UISlider) {
      currentValue = lroundf(_slider.value)
    }
    
     func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        // modified code excecise so that slider doesn't reset to
        //  50 but starts in previous rounds position
        //currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }

}

