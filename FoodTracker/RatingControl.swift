//
//  RatingControl.swift
//  FoodTracker
//
//  Created by EAPPLE on 16/04/2019.
//  Copyright © 2019 Code Valley. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    //Mark: Properties
    private var ratingButtons = [UIButton]()
    private var rating = 0;
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0){
        didSet{
            setUpButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet{
            setUpButtons()
        }
    }

    //Mark: Initialization
    
    //Overrided initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButtons()
    }
    
    //SuperClass Initializer
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setUpButtons()
    }
    
    //Mark: Private Buttons
    private func setUpButtons(){
        
        //Clear all existing buttons
        for button in ratingButtons{
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        //Add new buttons
        for _ in 0..<starCount{
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            //Add Constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            //setup Button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            //Add button to stackView
            addArrangedSubview(button)
            
            ratingButtons.append(button)
        }
        
        
    }
    
    //Mark: Button Actions
    @objc
    private func ratingButtonTapped(button: UIButton){
        print("Button Pressed")
    }
    
    
    
}
