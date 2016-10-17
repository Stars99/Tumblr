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
    
  

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    
     var buttons: [UIButton]!
    
    
    
    @IBOutlet var composeViewController: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons = [textButton]
        buttons = [textButton, photoButton, quoteButton, linkButton, chatButton, videoButton]
        
        // view.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.5)
    }
    
    // set the initial positions of the compose buttons to below the screen.
    override func viewWillAppear(_ animated: Bool) {
        composeViewController.center.y = view.frame.size.height
       for i in buttons {
            i.center.y = view.frame.size.height
        }
        
        }
        
    


    //schedule the animations of the compose buttons.
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 00.2, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [], animations: {
            self.textButton.center.y = 320
            }, completion: nil)
        
        
        
        UIView.animate(withDuration: 00.5, delay: 0.5, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [], animations: {
            self.photoButton.center.y = 320
            }, completion: nil)
        

    
        UIView.animate(withDuration: 00.5, delay: 0.8, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [], animations: {
            self.chatButton.center.y = 155
            }, completion: nil)
        
        
        UIView.animate(withDuration: 0.2, delay: 0.2, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [], animations: {
            self.quoteButton.center.y = 320
            }, completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 0.9, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [], animations: {
            self.linkButton.center.y = 155
            }, completion: nil)
        
        UIView.animate(withDuration: 0.9, delay: 0.5, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [], animations: {
            self.videoButton.center.y = 155
            }, completion: nil)
        
    }


    
    
    @IBAction func didPressNevemindButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
        
        UIView.animate(withDuration:0.6, delay: 0.5, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [], animations: {
            self.photoButton.center.y = -500
            }, completion: nil)
        

        
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
