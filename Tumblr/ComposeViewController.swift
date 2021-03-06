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
        
        UIView.animate(withDuration: 00.2, delay: 0.4, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
            self.textButton.center.y = 320
            }, completion: nil)
        
        
        
        UIView.animate(withDuration: 00.9, delay: 0.4, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
            self.photoButton.center.y = 320
            }, completion: nil)
        
        
        UIView.animate(withDuration: 0.3, delay: 0.4, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
            self.quoteButton.center.y = 320
            }, completion: nil)
        
        
        UIView.animate(withDuration: 00.8, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
            self.chatButton.center.y = 155
            }, completion: nil)
        
        UIView.animate(withDuration: 0.6, delay: 0.8, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.linkButton.center.y = 155
            }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.7, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.videoButton.center.y = 155
            }, completion: nil)
    }
    
    @IBAction func didPressNevemindButton(_ sender: UIButton) {
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.textButton.center.y = -155
            }, completion: { (Bool) in
                
            self.dismiss(animated: true, completion: nil)
                
                self.textButton.isHidden = true
        })
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.photoButton.center.y = -155
            }, completion: { (Bool) in
                

            self.dismiss(animated: true, completion: nil)
                
                self.photoButton.isHidden = true
        })
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.quoteButton.center.y = -155
            }, completion: { (Bool) in
                
                
                self.dismiss(animated: true, completion: nil)
                
                self.quoteButton.isHidden = true
        })
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.linkButton.center.y = -310
            }, completion: { (Bool) in
                
                
                self.dismiss(animated: true, completion: nil)
                
                self.linkButton.isHidden = true
        })
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.quoteButton.center.y = -310
            }, completion: { (Bool) in
                self.dismiss(animated: true, completion: nil)
                self.quoteButton.isHidden = true
        })
        
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.chatButton.center.y = -310
            }, completion: { (Bool) in
                self.dismiss(animated: true, completion: nil)
                self.chatButton.isHidden = true
        })
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.videoButton.center.y = -310
            }, completion: { (Bool) in
                self.dismiss(animated: true, completion: nil)
                self.videoButton.isHidden = true
        })
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
