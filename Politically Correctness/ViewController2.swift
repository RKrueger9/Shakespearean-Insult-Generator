//
//  ViewController2.swift
//  Shakespearean Insult Generator
//
//  Created by RKrueger on 12/2/15.
//  Copyright © 2015 RKrueger. All rights reserved.
//

import UIKit

class ViewController2: UIViewController
{
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var insult = Insult();
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        displayText();
        displayImage()
    }
    
    func displayText()
    {
        textView.text = insult.findInsult()
    }
    
    func displayImage()
    {
        pictureImageView.image = UIImage (named: insult.pictureArray[insult.findPicture()])
    }
}
