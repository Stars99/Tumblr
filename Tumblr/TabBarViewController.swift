//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Poudel, Trilochan on 10/13/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
   
    
    @IBOutlet weak var explorePopUp: UIButton!
   
    //Create an outlet for the contentView by ctrl + drag
    @IBOutlet weak var contentView: UIView!
    
    //Create an IBOutlet array named, buttons to hold your tab bar buttons.
    @IBOutlet var buttons: [UIButton]!
    
    //Define variables to hold each ViewController associated with a tab.
    
    var homeViewController1: UIViewController!
    var searchViewController2: UIViewController!
    var accountViewController3: UIViewController!
    var trendingViewController4: UIViewController!
    var loginViewController5 : UIViewController!

    //Link your ViewController Variables to the ViewControllers in the Storyboard.
    let main = UIStoryboard(name: "Main", bundle: nil)
    
    //Define a variable for an array to hold the ViewControllers named, viewControllers
    var viewController: [UIViewController]!
    
    //Define a variable to keep track of the tab button that is selected. Set it to an initial value of 0. We will link the button's tag value to this variable. So an initial value of 0 will reference our first button.
    var selectedIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
           UIView.animate(withDuration:0.8, delay: 0.0,
            options: [.autoreverse,.repeat], animations: { () -> Void in
                self.explorePopUp.transform = CGAffineTransform(translationX: 0, y: 10)
            }, completion: nil)
        
    
        
        homeViewController1 = main.instantiateViewController(withIdentifier:"homeViewControllerId")
        searchViewController2 = main.instantiateViewController(withIdentifier:"searchViewControllerId")
        accountViewController3 = main.instantiateViewController(withIdentifier:"accountViewControllerId")
        trendingViewController4 = main.instantiateViewController(withIdentifier:"trendingViewControllerId")
        
   loginViewController5 = main.instantiateViewController(withIdentifier:"loginViewControllerId")
        

        buttons[selectedIndex].isSelected = true
        didPressTabBarButtons(buttons[selectedIndex])
        
    }
    
    
    
    
    
    
    

    //Create a Shared Action for the Buttons
    @IBAction func didPressTabBarButtons(_ sender: UIButton) {
        
        //you should match whatever the content view is here
        homeViewController1.view.frame = contentView.bounds
        
        //you should match whatever the content view is here
        searchViewController2.view.frame = contentView.bounds//using bounds to make x n y zero
        
        //you should match whatever the content view is here
        accountViewController3.view.frame = contentView.bounds//using bounds to make x n y zero
        
        //you should match whatever the content view is here
        trendingViewController4.view.frame = contentView.bounds//using bounds to make x n y zero
        
        //Add each ViewController to your viewControllers array
        viewController = [homeViewController1, searchViewController2, accountViewController3, trendingViewController4, loginViewController5]

        
        //keep track of the previous button
        let previousIndex = selectedIndex
       
        
        selectedIndex = sender.tag
         buttons[previousIndex].isSelected = false
        
        let previousVC = viewController[previousIndex]
        
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        
        let vc = viewController[selectedIndex]
        
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
