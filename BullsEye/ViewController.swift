//
//  ViewController.swift
//  BullsEye
//
//  Created by TJ Oluotch on 31/01/2018.
//  Copyright © 2018 TJ Oluotch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    @IBAction func sliderMoved(_slider: UISlider) {
      currentValue = lroundf(_slider.value)
    }

}

