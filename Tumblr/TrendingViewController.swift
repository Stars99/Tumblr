//
//  TrendingViewController.swift
//  Tumblr
//
//  Created by Poudel, Trilochan on 10/14/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    //Out let for the scroll view
    @IBOutlet weak var scrollView: UIScrollView!
    //Out let for the image View
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

       scrollView.contentSize = imageView.frame.size
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
