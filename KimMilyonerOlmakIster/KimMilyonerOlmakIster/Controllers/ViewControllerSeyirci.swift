//
//  ViewControllerSeyirci.swift
//  KimMilyonerOlmakIster
//
//  Created by Yakup Acis on 9/11/22.
//

import UIKit

class ViewControllerSeyirci: UIViewController {

    var timer = Timer()
    var myTime = 3
    
    var trueAnswer = ""
    var wrongAnswer1 = ""
    var wrongAnswer2 = ""
    var wrongAnswer3 = ""
    
    let aButton = UIButton()
    let bButton = UIButton()
    let cButton = UIButton()
    let dButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aButton.frame = CGRect(x: 60, y: 474, width: 300, height: 21)
        aButton.backgroundColor = UIColor.yellow
        view.addSubview(aButton)
        
        bButton.frame = CGRect(x: 60, y: 514, width: 300, height: 21)
        bButton.backgroundColor = UIColor.yellow
        view.addSubview(bButton)
        
        
        cButton.frame = CGRect(x: 60, y: 554, width: 300, height: 21)
        cButton.backgroundColor = UIColor.yellow
        view.addSubview(cButton)
        
        
        dButton.frame = CGRect(x: 60, y: 591, width: 300, height: 21)
        dButton.backgroundColor = UIColor.yellow
        view.addSubview(dButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.75, delay: 0.25){
            self.aButton.frame.size.width -= 100
            self.bButton.frame.size.width -= 75
            self.cButton.frame.size.width -= 150
            self.dButton.frame.size.width -= 200
        }
        UIView.animate(withDuration: 0.75, delay: 0.5){
            self.aButton.frame.size.width += 100
            self.bButton.frame.size.width += 75
            self.cButton.frame.size.width += 150
            self.dButton.frame.size.width += 200
        }
        UIView.animate(withDuration: 0.75, delay: 0.75){
            self.aButton.frame.size.width -= 100
            self.bButton.frame.size.width -= 75
            self.cButton.frame.size.width -= 150
            self.dButton.frame.size.width -= 200
        }
        UIView.animate(withDuration: 0.75, delay: 1){
            self.aButton.frame.size.width += 100
            self.bButton.frame.size.width += 75
            self.cButton.frame.size.width += 150
            self.dButton.frame.size.width += 200
        }
    }

}
