//
//  ViewControllerTelephone.swift
//  KimMilyonerOlmakIster
//
//  Created by Yakup Acis on 9/11/22.
//

import UIKit

class ViewControllerTelephone: UIViewController {

    @IBOutlet weak var buttonAcun: UIButton!
    @IBOutlet weak var buttonSerdar: UIButton!
    @IBOutlet weak var buttonYildiz: UIButton!
    @IBOutlet weak var acunImage: UIImageView!
    @IBOutlet weak var serdarImage: UIImageView!
    @IBOutlet weak var yildizImage: UIImageView!
    @IBOutlet weak var acunLabel: UILabel!
    @IBOutlet weak var serdarLabel: UILabel!
    @IBOutlet weak var yildizLabel: UILabel!
    
    var timer = Timer()
    var myTime = 3
    
    var answer : String = ""
    var question : String = ""
    
    var maxWidth : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonAcun.layer.cornerRadius = 24
        buttonSerdar.layer.cornerRadius = 24
        buttonYildiz.layer.cornerRadius = 24
    }
    @IBAction func araAcun(_ sender: Any) {
        buttonAcun.isHidden = true
        buttonSerdar.isHidden = true
        buttonYildiz.isHidden = true
        serdarImage.isHidden = true
        yildizImage.isHidden = true
        serdarLabel.isHidden = true
        acunLabel.isHidden = true
        yildizLabel.isHidden = true
        
        maxWidth = view.frame.size.width
        
        acunImage.frame = CGRect(x: 147 , y: 74, width: 120, height: 120)
        
        let acunAraniyor = UILabel()
        acunAraniyor.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 225, width: 350, height: 50)
        acunAraniyor.backgroundColor = UIColor.black
        acunAraniyor.layer.borderColor = UIColor.systemPurple.cgColor
        acunAraniyor.textColor = UIColor.green
        acunAraniyor.text = "Acun Ilıcalı Aranıyor..."
        acunAraniyor.textAlignment = .center
        acunAraniyor.numberOfLines = 0
        acunAraniyor.lineBreakMode = .byWordWrapping
        view.addSubview(acunAraniyor)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(sunucuSelamAcun), userInfo: nil, repeats: true)
        
    }
    @IBAction func araSerdar(_ sender: Any) {
        buttonAcun.isHidden = true
        buttonSerdar.isHidden = true
        buttonYildiz.isHidden = true
        acunImage.isHidden = true
        yildizImage.isHidden = true
        acunLabel.isHidden = true
        serdarLabel.isHidden = true
        yildizLabel.isHidden = true
        
        maxWidth = view.frame.size.width
        
        serdarImage.frame = CGRect(x: 147 , y: 74, width: 120, height: 120)
        
        let serdarAraniyor = UILabel()
        serdarAraniyor.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 225, width: 350, height: 50)
        serdarAraniyor.backgroundColor = UIColor.black
        serdarAraniyor.layer.borderColor = UIColor.systemPurple.cgColor
        serdarAraniyor.textColor = UIColor.green
        serdarAraniyor.text = "Serdar Ortaç Aranıyor..."
        serdarAraniyor.textAlignment = .center
        serdarAraniyor.numberOfLines = 0
        serdarAraniyor.lineBreakMode = .byWordWrapping
        view.addSubview(serdarAraniyor)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(sunucuSelamSerdar), userInfo: nil, repeats: true)
    }
    @IBAction func araYildiz(_ sender: Any) {
        buttonAcun.isHidden = true
        buttonSerdar.isHidden = true
        buttonYildiz.isHidden = true
        acunImage.isHidden = true
        serdarImage.isHidden = true
        acunLabel.isHidden = true
        serdarLabel.isHidden = true
        yildizLabel.isHidden = true
        
        maxWidth = view.frame.size.width
        
        yildizImage.frame = CGRect(x: 147 , y: 74, width: 120, height: 120)
        
        let yildizAraniyor = UILabel()
        yildizAraniyor.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 225, width: 350, height: 50)
        yildizAraniyor.backgroundColor = UIColor.black
        yildizAraniyor.layer.borderColor = UIColor.systemPurple.cgColor
        yildizAraniyor.textColor = UIColor.green
        yildizAraniyor.text = "Yıldız Tilbe Aranıyor..."
        yildizAraniyor.textAlignment = .center
        yildizAraniyor.numberOfLines = 0
        yildizAraniyor.lineBreakMode = .byWordWrapping
        view.addSubview(yildizAraniyor)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(sunucuSelamYildiz), userInfo: nil, repeats: true)
    }
    
    // ACUN ILICALI
    
    @objc func sunucuSelamAcun(){

        myTime -= 1
        if (myTime == 0){
            timer.invalidate()
            let sunucuSelam = UILabel()
            sunucuSelam.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 300, width: 350, height: 50)
            sunucuSelam.backgroundColor = UIColor.black
            sunucuSelam.layer.borderColor = UIColor.systemPurple.cgColor
            sunucuSelam.textColor = UIColor.white
            sunucuSelam.text = "Sunucu: Merhabalar Acun Bey, yarışmacımız bir soruda takıldı ve size sormak istiyor."
            sunucuSelam.textAlignment = .center
            sunucuSelam.numberOfLines = 0
            sunucuSelam.lineBreakMode = .byWordWrapping
            sunucuSelam.layer.cornerRadius = 10
            view.addSubview(sunucuSelam)
            myTime = 2
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(acunSelam), userInfo: nil, repeats: true)
        }
    }

    @objc func acunSelam(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let acunSelam = UILabel()
            acunSelam.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 375, width: 350, height: 50)
            acunSelam.backgroundColor = UIColor.black
            acunSelam.layer.borderColor = UIColor.systemPurple.cgColor
            acunSelam.textColor = UIColor.white
            acunSelam.text = "Acun Ilıcalı: Merhabalar tabi, soruyu bekliyorum."
            acunSelam.textAlignment = .center
            acunSelam.numberOfLines = 0
            acunSelam.lineBreakMode = .byWordWrapping
            acunSelam.layer.cornerRadius = 10
                view.addSubview(acunSelam)
            myTime = 2
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(yarismaciSoru), userInfo: nil, repeats: true)
        }
    }
    
    @objc func yarismaciSoru(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let yarismaciSoru = UILabel()
            yarismaciSoru.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 450, width: 350, height: 100)
            yarismaciSoru.backgroundColor = UIColor.black
            yarismaciSoru.layer.borderColor = UIColor.systemPurple.cgColor
            yarismaciSoru.textColor = UIColor.white
            yarismaciSoru.text = "Yarışmacı: Merhaba Acun'cum. Soru şu, \(question)"
            yarismaciSoru.textAlignment = .center
            yarismaciSoru.numberOfLines = 0
            yarismaciSoru.lineBreakMode = .byWordWrapping
            yarismaciSoru.layer.cornerRadius = 10
            view.addSubview(yarismaciSoru)
            myTime = 2
            
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(acunCevap), userInfo: nil, repeats: true)
        }
    }
    
    @objc func acunCevap(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let acunCevap = UILabel()
            acunCevap.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 575, width: 350, height: 50)
            acunCevap.backgroundColor = UIColor.black
            acunCevap.layer.borderColor = UIColor.systemPurple.cgColor
            acunCevap.textColor = UIColor.white
            acunCevap.text = "Acun Ilıcalı: Bu soruyu nasıl bilemedin şaşıyorum. Tabi ki de cevap \(answer)"
            acunCevap.textAlignment = .center
            acunCevap.numberOfLines = 0
            acunCevap.lineBreakMode = .byWordWrapping
            view.addSubview(acunCevap)
            myTime = 2
            
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tesekkurlerButton), userInfo: nil, repeats: true)
        }
    }
    
    @objc func tesekkurlerButton(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let tesekkurlerButton = UIButton()
            tesekkurlerButton.frame = CGRect(x: maxWidth * 0.5 - 75 , y: 650, width: 150, height: 40)
            tesekkurlerButton.layer.cornerRadius = 10
            tesekkurlerButton.tintColor = UIColor.white
            tesekkurlerButton.setTitle("Teşekkürler Acun", for: .normal)
            tesekkurlerButton.backgroundColor = UIColor.systemPurple
            
            tesekkurlerButton.addTarget(self, action: #selector(close), for: .touchUpInside)
            
            view.addSubview(tesekkurlerButton)
            myTime = 2
        }
    }
    
    // SERDAR ORTAÇ
    
    @objc func sunucuSelamSerdar(){

        myTime -= 1
        if (myTime == 0){
            timer.invalidate()
            let sunucuSelam = UILabel()
            sunucuSelam.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 300, width: 350, height: 50)
            sunucuSelam.backgroundColor = UIColor.black
            sunucuSelam.layer.borderColor = UIColor.systemPurple.cgColor
            sunucuSelam.textColor = UIColor.white
            sunucuSelam.text = "Sunucu: Merhabalar Serdar Bey, yarışmacımız bir soruda takıldı ve size sormak istiyor."
            sunucuSelam.textAlignment = .center
            sunucuSelam.numberOfLines = 0
            sunucuSelam.lineBreakMode = .byWordWrapping
            sunucuSelam.layer.cornerRadius = 10
            view.addSubview(sunucuSelam)
            myTime = 2
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(serdarSelam), userInfo: nil, repeats: true)
        }
    }

    @objc func serdarSelam(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let serdarSelam = UILabel()
            serdarSelam.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 375, width: 350, height: 50)
            serdarSelam.backgroundColor = UIColor.black
            serdarSelam.layer.borderColor = UIColor.systemPurple.cgColor
            serdarSelam.textColor = UIColor.white
            serdarSelam.text = "Serdar Ortaç: Merhabalar teşekkür ederim, bekliyorum."
            serdarSelam.textAlignment = .center
            serdarSelam.numberOfLines = 0
            serdarSelam.lineBreakMode = .byWordWrapping
            serdarSelam.layer.cornerRadius = 10
                view.addSubview(serdarSelam)
            myTime = 2
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(yarismaciSoruSerdar), userInfo: nil, repeats: true)
        }
    }
    
    @objc func yarismaciSoruSerdar(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let yarismaciSoru = UILabel()
            yarismaciSoru.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 450, width: 350, height: 100)
            yarismaciSoru.backgroundColor = UIColor.black
            yarismaciSoru.layer.borderColor = UIColor.systemPurple.cgColor
            yarismaciSoru.textColor = UIColor.white
            yarismaciSoru.text = "Yarışmacı: Merhaba Serdar, \(question)"
            yarismaciSoru.textAlignment = .center
            yarismaciSoru.numberOfLines = 0
            yarismaciSoru.lineBreakMode = .byWordWrapping
            yarismaciSoru.layer.cornerRadius = 10
            view.addSubview(yarismaciSoru)
            myTime = 2
            
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(serdarCevap), userInfo: nil, repeats: true)
        }
    }
    
    @objc func serdarCevap(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let serdarCevap = UILabel()
            serdarCevap.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 575, width: 350, height: 75)
            serdarCevap.backgroundColor = UIColor.black
            serdarCevap.layer.borderColor = UIColor.systemPurple.cgColor
            serdarCevap.textColor = UIColor.white
            serdarCevap.text = "Serdar Ortaç: Hemen seni bu dertten kurtarayım. Cevabın \(answer) olduğunu düşünüyorum."
            serdarCevap.textAlignment = .center
            serdarCevap.numberOfLines = 0
            serdarCevap.lineBreakMode = .byWordWrapping
            view.addSubview(serdarCevap)
            myTime = 2
            
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tesekkurlerButtonSerdar), userInfo: nil, repeats: true)
        }
    }
    
    @objc func tesekkurlerButtonSerdar(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let tesekkurlerButton = UIButton()
            tesekkurlerButton.frame = CGRect(x: maxWidth * 0.5 - 90 , y: 675, width: 180, height: 40)
            tesekkurlerButton.layer.cornerRadius = 10
            tesekkurlerButton.tintColor = UIColor.white
            tesekkurlerButton.setTitle("Teşekkürler Serdar", for: .normal)
            tesekkurlerButton.backgroundColor = UIColor.systemPurple
            
            tesekkurlerButton.addTarget(self, action: #selector(close), for: .touchUpInside)
            
            view.addSubview(tesekkurlerButton)
            myTime = 2
        }
    }
    
    
    // YILDIZ TİLBE
    
    @objc func sunucuSelamYildiz(){

        myTime -= 1
        if (myTime == 0){
            timer.invalidate()
            let sunucuSelam = UILabel()
            sunucuSelam.adjustsFontSizeToFitWidth = true
            sunucuSelam.numberOfLines = 0
            sunucuSelam.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 300, width: 350, height: 75)
            sunucuSelam.backgroundColor = UIColor.black
            sunucuSelam.layer.borderColor = UIColor.systemPurple.cgColor
            sunucuSelam.textColor = UIColor.white
            sunucuSelam.text = "Sunucu: Merhabalar Yıldız Hanım, yarışmacımız bir soruda takıldı ve size sormak istiyor."
            sunucuSelam.textAlignment = .center
            sunucuSelam.lineBreakMode = .byWordWrapping
            sunucuSelam.adjustsFontSizeToFitWidth = true
            sunucuSelam.layer.cornerRadius = 10
            view.addSubview(sunucuSelam)
            myTime = 2
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(yildizSelam), userInfo: nil, repeats: true)
        }
    }

    @objc func yildizSelam(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let yildizSelam = UILabel()
            yildizSelam.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 400, width: 350, height: 50)
            yildizSelam.backgroundColor = UIColor.black
            yildizSelam.layer.borderColor = UIColor.systemPurple.cgColor
            yildizSelam.textColor = UIColor.white
            yildizSelam.text = "Yıldız Tilbe: Merhabalar teşekkür ederim, bekliyorum."
            yildizSelam.textAlignment = .center
            yildizSelam.numberOfLines = 0
            yildizSelam.lineBreakMode = .byWordWrapping
            yildizSelam.layer.cornerRadius = 10
                view.addSubview(yildizSelam)
            myTime = 2
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(yarismaciSoruYildiz), userInfo: nil, repeats: true)
        }
    }
    
    @objc func yarismaciSoruYildiz(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let yarismaciSoru = UILabel()
            yarismaciSoru.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 475, width: 350, height: 100)
            yarismaciSoru.backgroundColor = UIColor.black
            yarismaciSoru.layer.borderColor = UIColor.systemPurple.cgColor
            yarismaciSoru.textColor = UIColor.white
            yarismaciSoru.text = "Yarışmacı: Merhaba Yıldız, \(question)"
            yarismaciSoru.textAlignment = .center
            yarismaciSoru.numberOfLines = 0
            yarismaciSoru.lineBreakMode = .byWordWrapping
            yarismaciSoru.layer.cornerRadius = 10
            view.addSubview(yarismaciSoru)
            myTime = 2
            
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(yildizCevap), userInfo: nil, repeats: true)
        }
    }
    
    @objc func yildizCevap(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let yildizCevap = UILabel()
            yildizCevap.frame = CGRect(x: maxWidth * 0.5 - 175 , y: 600, width: 350, height: 50)
            yildizCevap.backgroundColor = UIColor.black
            yildizCevap.layer.borderColor = UIColor.systemPurple.cgColor
            yildizCevap.textColor = UIColor.white
            yildizCevap.text = "Yıldız Tilbe: Hımmm, güzel soru. Bence cevap \(answer)."
            yildizCevap.textAlignment = .center
            yildizCevap.numberOfLines = 0
            yildizCevap.lineBreakMode = .byWordWrapping
            view.addSubview(yildizCevap)
            myTime = 2
            
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tesekkurlerButtonYildiz), userInfo: nil, repeats: true)
        }
    }
    
    @objc func tesekkurlerButtonYildiz(){
        myTime -= 1
        if (myTime == 0)
        {
            timer.invalidate()
            let tesekkurlerButton = UIButton()
            tesekkurlerButton.frame = CGRect(x: maxWidth * 0.5 - 90 , y: 675, width: 180, height: 40)
            tesekkurlerButton.layer.cornerRadius = 10
            tesekkurlerButton.tintColor = UIColor.white
            tesekkurlerButton.setTitle("Teşekkürler Yıldız", for: .normal)
            tesekkurlerButton.backgroundColor = UIColor.systemPurple
            
            tesekkurlerButton.addTarget(self, action: #selector(close), for: .touchUpInside)
            
            view.addSubview(tesekkurlerButton)
            myTime = 2
        }
    }
    
    
    @objc func close(){
        self.dismiss(animated: true, completion: nil)
    }
}
