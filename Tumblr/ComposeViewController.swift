//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Poudel, Trilochan on 10/14/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    
    var fadeTransition: FadeTransition!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.5)
    }
    
    // set the initial positions of the compose buttons to below the screen.
    override func viewWillAppear(_ animated: Bool) {
        
        
    }
    
    //schedule the animations of the compose buttons.
    override func viewDidAppear(_ animated: Bool) {
        
        
    }
    
    
    
    @IBAction func didPressNevemindButton(_ sender: UIButton) {
       // performSegue(withIdentifier: "composeButtonSegue", sender: nil)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        let destinationViewController = segue.destination
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
    }
    
    
    
    
}
