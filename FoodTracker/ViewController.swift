//
//  ViewController.swift
//  FoodTracker
//
//  Created by EAPPLE on 16/04/2019.
//  Copyright © 2019 Code Valley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Mark: Properties
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var setDefaultButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Screen loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

