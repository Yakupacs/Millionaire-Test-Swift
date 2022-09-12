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
    @IBOutlet weak var seyircilerBekleniyorLabel: UILabel!
    @IBOutlet weak var dogruCevapLabel: UILabel!
    
    var trueAnswer = String()

    var aButton = UIButton()
    var bButton = UIButton()
    var cButton = UIButton()
    var dButton = UIButton()
    
    var whichButton : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aButton.frame = CGRect(x: 60, y: 474, width: 300, height: 21)
        aButton.backgroundColor = UIColor.systemTeal
        view.addSubview(aButton)
        
        bButton.frame = CGRect(x: 60, y: 514, width: 300, height: 21)
        bButton.backgroundColor = UIColor.systemTeal
        view.addSubview(bButton)
        
        
        cButton.frame = CGRect(x: 60, y: 554, width: 300, height: 21)
        cButton.backgroundColor = UIColor.systemTeal
        view.addSubview(cButton)
        
        
        dButton.frame = CGRect(x: 60, y: 594, width: 300, height: 21)
        dButton.backgroundColor = UIColor.systemTeal
        view.addSubview(dButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.75, delay: 0.25){
            self.aButton.frame.size.width -= 300
            self.bButton.frame.size.width -= 75
            self.cButton.frame.size.width -= 150
            self.dButton.frame.size.width -= 200
        }
        UIView.animate(withDuration: 0.75, delay: 0.5){
            self.aButton.frame.size.width += 300
            self.bButton.frame.size.width += 75
            self.cButton.frame.size.width += 150
            self.dButton.frame.size.width += 200
        }
        UIView.animate(withDuration: 0.75, delay: 0.75){
            self.aButton.frame.size.width -= 150
            self.bButton.frame.size.width -= 200
            self.cButton.frame.size.width -= 300
            self.dButton.frame.size.width -= 75
        }
        UIView.animate(withDuration: 0.75, delay: 1){
            self.aButton.frame.size.width += 150
            self.bButton.frame.size.width += 200
            self.cButton.frame.size.width += 300
            self.dButton.frame.size.width += 75
        }
        UIView.animate(withDuration: 0.75, delay: 1.25){
            self.aButton.frame.size.width -= 300
            self.bButton.frame.size.width -= 75
            self.cButton.frame.size.width -= 150
            self.dButton.frame.size.width -= 200
        }
        UIView.animate(withDuration: 0.75, delay: 1.5){
            self.aButton.frame.size.width += 300
            self.bButton.frame.size.width += 75
            self.cButton.frame.size.width += 150
            self.dButton.frame.size.width += 200
        }
        UIView.animate(withDuration: 0.75, delay: 1.75){
            self.aButton.frame.size.width -= 150
            self.bButton.frame.size.width -= 200
            self.cButton.frame.size.width -= 300
            self.dButton.frame.size.width -= 75
        }
        UIView.animate(withDuration: 0.75, delay: 2){
            self.aButton.frame.size.width += 150
            self.bButton.frame.size.width += 200
            self.cButton.frame.size.width += 300
            self.dButton.frame.size.width += 75
        }
        UIView.animate(withDuration: 0.75, delay: 2.75){
            self.aButton.frame.size.width -= 290
            self.bButton.frame.size.width -= 290
            self.cButton.frame.size.width -= 290
            self.dButton.frame.size.width -= 290
        }
        if (self.whichButton == "a"){
            UIView.animate(withDuration: 0.75, delay: 3.5){
                self.aButton.frame.size.width += 200
                self.bButton.frame.size.width += 75
                self.cButton.frame.size.width += 150
                self.dButton.frame.size.width += 20
            }
        }
        if (self.whichButton == "b"){
            UIView.animate(withDuration: 0.75, delay: 3.5){
                self.aButton.frame.size.width += 75
                self.bButton.frame.size.width += 200
                self.cButton.frame.size.width += 150
                self.dButton.frame.size.width += 20
            }
        }
        else if (self.whichButton == "c"){
            UIView.animate(withDuration: 0.75, delay: 3.5){
                self.aButton.frame.size.width += 75
                self.bButton.frame.size.width += 150
                self.cButton.frame.size.width += 200
                self.dButton.frame.size.width += 20
            }
        }
        else if (self.whichButton == "d"){
            UIView.animate(withDuration: 0.75, delay: 3.5){
                self.aButton.frame.size.width += 75
                self.bButton.frame.size.width += 150
                self.cButton.frame.size.width += 20
                self.dButton.frame.size.width += 200
            }
        }
    }

}
