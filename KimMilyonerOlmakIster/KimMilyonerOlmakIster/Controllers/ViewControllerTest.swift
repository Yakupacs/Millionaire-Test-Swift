//
//  ViewControllerTest.swift
//  KimMilyonerOlmakIster
//
//  Created by Yakup Acis on 9/7/22.
//

import UIKit

class ViewControllerTest: UIViewController {

    @IBOutlet weak var timerButton: UIButton!
    @IBOutlet weak var questionButton: UIButton!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var rewardButton: UIButton!
    @IBOutlet weak var seyirciButton: UIButton!
    @IBOutlet weak var yariYariyaButton: UIButton!
    @IBOutlet weak var telefonButton: UIButton!
    
    var oneArray : [question] = []
    var twoArray : [question] = []
    var threeArray : [question] = []
    var fourArray : [question] = []
    var fiveArray : [question] = []
    var sixArray : [question] = []
    var sevenArray : [question] = []
    
    var buttons : [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionButton.titleLabel?.lineBreakMode = .byWordWrapping
        questionButton.titleLabel?.textAlignment = .center
        aButton.titleLabel?.textAlignment = .left
        
        var oneQues1 = question.init(question: "Araçların bir ana yoldaki trafiğe daha güvenli şekilde katılmaları için yapılmış “katılma şeridi” de denilen şeritlere ne ad verilir?",
                                     trueAnswer: "Hızlanma şeridi",
                                     wrongAnswer1: "Sol şerit",
                                     wrongAnswer2: "Tırmanma şeridi",
                                     wrongAnswer3: "Emniyet şeridi")
        
        oneArray.append(oneQues1)
        
        var twoQues1 = question.init(question: "2Soru?", trueAnswer: "Cevap", wrongAnswer1: "Yanlış Cevap", wrongAnswer2: "Yanlış Cevap", wrongAnswer3: "Yanlış Cevap")
        
        twoArray.append(twoQues1)
        
        var threeQues1 = question.init(question: "3Soru?", trueAnswer: "Cevap", wrongAnswer1: "Yanlış Cevap", wrongAnswer2: "Yanlış Cevap", wrongAnswer3: "Yanlış Cevap")
        
        threeArray.append(threeQues1)
        
        var fourQues1 = question.init(question: "4Soru?", trueAnswer: "Cevap", wrongAnswer1: "Yanlış Cevap", wrongAnswer2: "Yanlış Cevap", wrongAnswer3: "Yanlış Cevap")
        
        fourArray.append(fourQues1)
        
        var fiveQues1 = question.init(question: "5Soru?", trueAnswer: "Cevap", wrongAnswer1: "Yanlış Cevap", wrongAnswer2: "Yanlış Cevap", wrongAnswer3: "Yanlış Cevap")
        
        fiveArray.append(fourQues1)
        
        var sixQues1 = question.init(question: "6Soru?", trueAnswer: "Cevap", wrongAnswer1: "Yanlış Cevap", wrongAnswer2: "Yanlış Cevap", wrongAnswer3: "Yanlış Cevap")
        
        sixArray.append(sixQues1)
        
        var sevenQues1 = question.init(question: "7Soru?", trueAnswer: "Cevap", wrongAnswer1: "Yanlış Cevap", wrongAnswer2: "Yanlış Cevap", wrongAnswer3: "Yanlış Cevap")
        
        sevenArray.append(sevenQues1)
        
        buttons.append(aButton)
        buttons.append(bButton)
        buttons.append(cButton)
        buttons.append(dButton)
        
        seyirciButton.layer.cornerRadius = 20
        yariYariyaButton.layer.cornerRadius = 20
        telefonButton.layer.cornerRadius = 20
        
        rewardButton.layer.borderWidth = 1
        rewardButton.layer.borderColor = UIColor.systemPurple.cgColor
        
        timerButton.layer.borderWidth = 3
        timerButton.layer.borderColor = UIColor.systemOrange.cgColor
        timerButton.layer.cornerRadius = 30
        
        questionButton.layer.borderWidth = 1
        questionButton.layer.borderColor = UIColor.systemPurple.cgColor
        
        aButton.layer.borderWidth = 1
        aButton.layer.borderColor = UIColor.systemPurple.cgColor
        
        bButton.layer.borderWidth = 1
        bButton.layer.borderColor = UIColor.systemPurple.cgColor
        
        cButton.layer.borderWidth = 1
        cButton.layer.borderColor = UIColor.systemPurple.cgColor
        
        dButton.layer.borderWidth = 1
        dButton.layer.borderColor = UIColor.systemPurple.cgColor

        let image = UIImage(named: "seyirci")
        seyirciButton.setBackgroundImage(image, for: .normal)
        

        
        let image2 = UIImage(named: "12")
        yariYariyaButton.setBackgroundImage(image2, for: .normal)
    
        
        let image3 = UIImage(named: "telephone")
        telefonButton.setBackgroundImage(image3, for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        oneArray.shuffle()
        
        questionButton.setTitle(oneArray[0].question, for: .normal)
        
        buttons.shuffle()
        
        buttons[0].setTitle(oneArray[0].trueAnswer, for: .normal)
        buttons[1].setTitle(oneArray[0].wrongAnswer1, for: .normal)
        buttons[2].setTitle(oneArray[0].wrongAnswer2, for: .normal)
        buttons[3].setTitle(oneArray[0].wrongAnswer3, for: .normal)
        if let bundle = Bundle.main.path(forResource: "music", ofType: "mp3") {
                    let backgroundMusic = NSURL(fileURLWithPath: bundle)
            
                }
        
    }

}
