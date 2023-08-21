//
//  ViewController.swift
//  Magic Ball Future
//
//  Revised by Camilo L-Shide on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    let imageArray = [UIImage(named:"ball1"),UIImage(named:"ball2"),UIImage(named:"ball3"),UIImage(named:"ball4"),UIImage(named:"ball5")]
   
    var currentValue = 0 // This will hold the new value generated when the button is pressed.
    
    var oldValue = 0 // This will hold the value generated when the button is pressed and will be compared with the new value created every time the button is pressed.
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        currentValue = Int.random(in: 0 ... 4) // new value gets created randomly within the lenght of the array
        
        if currentValue == oldValue{ // At this point we check if the new generated value is equal to the one generated last time the button got pressed.
            while currentValue == oldValue{  // Then we generate a new value until it is different than the last value generated.
                currentValue = Int.random(in: 0 ... 4)
            } // As soon as the new value generated is different than the old value we get out of the loop.
            imageView.image = imageArray[currentValue] // Then the image gets updated.
        }
        else{
            imageView.image = imageArray[currentValue] //If we are lucky and the random number generated in different than the one generated last time, we simply update the image accordingly
        }
        oldValue = currentValue // the value created in this event gets stored so comparision is possible next time the button gets pressed
    }
    
}
