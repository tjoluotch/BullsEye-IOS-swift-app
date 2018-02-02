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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        // upper limit in arc4random treated as exclusive
        targetValue = 1 + Int(arc4random_uniform(100))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello, World",
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    // interface builder likes to call methods actions
    @IBAction func sliderMoved(_slider: UISlider) {
      currentValue = lroundf(_slider.value)
    }

}

