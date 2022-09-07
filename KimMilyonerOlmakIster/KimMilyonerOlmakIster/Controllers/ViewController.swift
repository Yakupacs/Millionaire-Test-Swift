//
//  ViewController.swift
//  KimMilyonerOlmakIster
//
//  Created by Yakup Acis on 9/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oyunaBaslaButton: UIButton!
    @IBOutlet weak var nasilOynanirButton: UIButton!
    @IBOutlet weak var bilgilerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oyunaBaslaButton.layer.borderWidth = 1
        oyunaBaslaButton.layer.borderColor = UIColor.systemPurple.cgColor
        
        nasilOynanirButton.layer.borderWidth = 1
        nasilOynanirButton.layer.borderColor = UIColor.systemPurple.cgColor
        
        bilgilerButton.layer.borderWidth = 1
        bilgilerButton.layer.borderColor = UIColor.systemPurple.cgColor
    }
}

