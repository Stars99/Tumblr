//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Poudel, Trilochan on 10/17/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func didPressCancelButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }


}
