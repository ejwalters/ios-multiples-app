//
//  ViewController.swift
//  multiples-exercise
//
//  Created by Eric Walters on 12/21/15.
//  Copyright © 2015 Eric Walters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var multipleNumber = 0
    var currentNumber = 0
    var newTotal = 0
    let maxNumber = 200

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var multipleTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var directionsLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var sumLabel: UILabel!
    
    @IBAction func onAddButtonPressed(sender: UIButton){
        newTotal = multipleNumber + currentNumber
        
        updateSumLabel()
        
        if isMaxReached(){
            logoImg.hidden = false
            multipleTxt.hidden = false
            playButton.hidden = false
            
            directionsLabel.hidden = true
            addButton.hidden = true
            sumLabel.hidden = true
            multipleTxt.text = ""
        }
        
        
    }
    
    
    @IBAction func onPlayButtonPressed(sender: UIButton){
        
        if(multipleTxt.text != nil && multipleTxt.text != ""){
            logoImg.hidden = true
            multipleTxt.hidden = true
            playButton.hidden = true
            
            directionsLabel.hidden = false
            addButton.hidden = false
            
            multipleNumber = Int(multipleTxt.text!)!
        }
    }
    
    func updateSumLabel(){
        
        directionsLabel.hidden = true
        sumLabel.hidden = false
        
        sumLabel.text = "\(currentNumber) + \(multipleNumber) = \(newTotal)"
        currentNumber = newTotal
        
    }
    
    func isMaxReached() -> Bool{
        if newTotal >= maxNumber{
            return true
        }
        else{
            return false
        }
    }
    


}

