//
//  ViewController.swift
//  FoodTracker
//
//  Created by EAPPLE on 16/04/2019.
//  Copyright © 2019 Code Valley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //Mark: Properties
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var setDefaultButton: UIButton!
    
    //Mark: Actions
    @IBAction func setDefaultButtonAction(_ sender: UIButton) {
        mealNameLabel.text = "Defualt Text"
    }
    
    //Mark: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("@textFieldShouldReturn: Called")
        //Hide Keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("@textFieldDidEndEditing: Called")
        mealNameLabel.text = textField.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        
       // print("Screen loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

