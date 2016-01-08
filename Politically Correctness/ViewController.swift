//
//  ViewController.swift
//  Shakespearean Insult Generator
//
//  Created by RKrueger on 12/2/15.
//  Copyright © 2015 RKrueger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var insult = Insult()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ViewController2
        dvc.insult = self.insult
        
    }
}

