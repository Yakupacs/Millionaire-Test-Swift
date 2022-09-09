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

    var whichButton : String = ""
    
    var timer = Timer()
    var myTime = 3
    
    var correctQuestion = 0
    
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
        
        var oneQues2 = question.init(question: "Açılış törenlerine veya düğünlere katılamayan kişiler genellikle ne gönderirler?",
                                     trueAnswer: "Çelenk",
                                     wrongAnswer1: "Meyve tabağı",
                                     wrongAnswer2: "İstek şarkı",
                                     wrongAnswer3: "Çek")
        
        var oneQues3 = question.init(question: "“Şuraya ne yazıldıysa o olur” diyen biri parmağıyla nereyi işaret eder?",
                                     trueAnswer: "Alnını",
                                     wrongAnswer1: "Ensesini",
                                     wrongAnswer2: "Avuç içini",
                                     wrongAnswer3: "Göğsünü")
        
        var oneQues4 = question.init(question: "Kıpırdamayın, çekiyorum, çekiyorum, çektim” diyen kişi muhtemelen kimdir?",
                                     trueAnswer: "Fotoğrafçı",
                                     wrongAnswer1: "Ressam",
                                     wrongAnswer2: "Dişçi",
                                     wrongAnswer3: "Niyetçi")
        
        var oneQues5 = question.init(question: "El ve yüz temizliğinde kullanılan, nemlendirilmiş, hoş kokulu “kolonyalı” mendilleri için kullanılan diğer ifade hangisidir?",
                                     trueAnswer: "Islak",
                                     wrongAnswer1: "Sulu",
                                     wrongAnswer2: "Nemli",
                                     wrongAnswer3: "Kokulu")
        
        var oneQues6 = question.init(question: "Uzun süreli bekleyişin sonunda istediğini elde eden kişiler için kullanılan “turnayı gözünden vurdu” şeklinde biten sözün başında hangisi söylenir?",
                                     trueAnswer: "Durdu durdu",
                                     wrongAnswer1: "Baktı baktı",
                                     wrongAnswer2: "Ölçtü biçti",
                                     wrongAnswer3: "Gezdi tozdu")
        
        var oneQues7 = question.init(question: "“Kendimi de sayayım mı?” şeklinde bir cevap alındıysa, sorulan soru muhtemelen hangisidir?",
                                     trueAnswer: "Kaç kişisiniz?",
                                     wrongAnswer1: "Kaçta gelirsiniz?",
                                     wrongAnswer2: "En son kaça olur?",
                                     wrongAnswer3: "Kaça gidiyorsun?")
        
        var oneQues8 = question.init(question: "Halk arasında kullanılan söze göre hangisi kara gün içindir?",
                                     trueAnswer: "Ak akçe",
                                     wrongAnswer1: "Kuru bakır",
                                     wrongAnswer2: "Keskin sirek",
                                     wrongAnswer3: "Acı kahve")
        
        var oneQues9 = question.init(question: "Sorduğunuz soruya “Ben de yabancısıyım” cevabını alıyorsanız, muhtemelen hangisini sormuşsunuzdur?",
                                     trueAnswer: "Adres tarifi",
                                     wrongAnswer1: "Hal hatır",
                                     wrongAnswer2: "Saat",
                                     wrongAnswer3: "Memleket")
        
        var oneQues10 = question.init(question: "“Çayın daha 5 dakikası var” diyen biri çayla ilgili muhtemelen hangisini söylemek istiyordur?",
                                     trueAnswer: "Daha demini almadı",
                                     wrongAnswer1: "Henüz bakkala gelmedi",
                                     wrongAnswer2: "Tarladan henüz toplanmadı",
                                     wrongAnswer3: "Paketi bile açılmadı")
        
        oneArray.append(oneQues1)
        oneArray.append(oneQues2)
        oneArray.append(oneQues3)
        oneArray.append(oneQues4)
        oneArray.append(oneQues5)
        oneArray.append(oneQues6)
        oneArray.append(oneQues7)
        oneArray.append(oneQues8)
        oneArray.append(oneQues9)
        oneArray.append(oneQues10)
        
        var twoQues1 = question.init(question: "Halı saha maçlarında hangisi genellikle görülmez?",
                                     trueAnswer: "Taç atışı",
                                     wrongAnswer1: "Köşe vuruşu",
                                     wrongAnswer2: "Serbest vuruş",
                                     wrongAnswer3: "Penaltı")
        
        var twoQues2 = question.init(question: "Halk arasında kullanılan bir sözde, peynir gemisinin hangisiyle yürümeyeceğinden bahsedilir?",
                                     trueAnswer: "Lafla",
                                     wrongAnswer1: "Sözle",
                                     wrongAnswer2: "Tezahüratla",
                                     wrongAnswer3: "Gazla")
        
        var twoQues3 = question.init(question: "Bir nikah öncesinde, gelinin bekar arkadaşları genellikle nereye isimlerini yazarlar?",
                                     trueAnswer: "Gelinin ayakkabısının altına",
                                     wrongAnswer1: "Gelinin duvağının içine",
                                     wrongAnswer2: "Gelin buketinin kenarlarına",
                                     wrongAnswer3: "Gelin alnının üstüne")
        
        var twoQues4 = question.init(question: "Arkadaşınız size hangisini söylerse, inat ederek yaptığınız bir işin sonucunda kimsenin fayda görmediğini düşünüyor demektir?",
                                     trueAnswer: "Başın göğe erdi mi?",
                                     wrongAnswer1: "Ne münasebet?",
                                     wrongAnswer2: "Hiç mi yok?",
                                     wrongAnswer3: "Neden ben?")
        
        var twoQues5 = question.init(question: "İnternet sitelerinde yer alan “SSS”nin açılımında, “Sorulan Sorular”dan önce hangi kelime gelir?",
                                     trueAnswer: "Sıkça",
                                     wrongAnswer1: "Sabırsızca",
                                     wrongAnswer2: "Sinsince",
                                     wrongAnswer3: "Saatlerce")
        
        var twoQues6 = question.init(question: "“Pilot”, “dolma” ve “kurşun” hangisinin çeşitlerine verilen isimlerdir?",
                                     trueAnswer: "Kalem",
                                     wrongAnswer1: "Defter",
                                     wrongAnswer2: "Silgi",
                                     wrongAnswer3: "Cetvel")
        
        var twoQues7 = question.init(question: "İlkokulda, sınıfta konuşanların ve yaramazlık yapanların adını tahtaya yazan öğrenci genellikle kim olur?",
                                     trueAnswer: "Sınıf başkanı",
                                     wrongAnswer1: "Temizlik kolu başkanı",
                                     wrongAnswer2: "İlk yardım kolu başkanı",
                                     wrongAnswer3: "Kütüphane kolu başkanı")
        
        var twoQues8 = question.init(question: "İçinden çıkılması güç bir durum karşısında söylenen “Doluya koydum almadı” şeklinde başlayan sözün devamı nasıldır?",
                                     trueAnswer: "Boşa koydum dolmadı",
                                     wrongAnswer1: "Elimde hiç kalmadı",
                                     wrongAnswer2: "Döküldü azalmadı",
                                     wrongAnswer3: "Bu iş böyle olmadı")
        
        var twoQues9 = question.init(question: "Halk arasında “üstüne titremek” ifadesi hangi anlamda kullanılır?",
                                     trueAnswer: "Sevmek ve özen göstermek",
                                     wrongAnswer1: "Utanmak ve sıkılmak",
                                     wrongAnswer2: "Korkmak ve çekinmek",
                                     wrongAnswer3: "Afallamak ve şaşmak")
        
        var twoQues10 = question.init(question: "İnternetin ilk zamanlarında sıkça kullanılan, “internet sitelerinde rastgele gezinmek” anlamına gelen söz hangisidir?",
                                     trueAnswer: "Sörf yapmak",
                                     wrongAnswer1: "Bisiklete binmek",
                                     wrongAnswer2: "Kazak kaymak",
                                     wrongAnswer3: "Paraşütle atlamak")
        twoArray.append(twoQues1)
        twoArray.append(twoQues2)
        twoArray.append(twoQues3)
        twoArray.append(twoQues4)
        twoArray.append(twoQues5)
        twoArray.append(twoQues6)
        twoArray.append(twoQues7)
        twoArray.append(twoQues8)
        twoArray.append(twoQues9)
        twoArray.append(twoQues10)
        
        var threeQues1 = question.init(question: "3Soru?", trueAnswer: "Cevap", wrongAnswer1: "Yanlış Cevap", wrongAnswer2: "Yanlış Cevap", wrongAnswer3: "Yanlış Cevap")
        
        threeArray.append(threeQues1)
        
        var fourQues1 = question.init(question: "4Soru?", trueAnswer: "Cevap", wrongAnswer1: "Yanlış Cevap", wrongAnswer2: "Yanlış Cevap", wrongAnswer3: "Yanlış Cevap")
        
        fourArray.append(fourQues1)
        
        var fiveQues1 = question.init(question: "5Soru?", trueAnswer: "Cevap", wrongAnswer1: "Yanlış Cevap", wrongAnswer2: "Yanlış Cevap", wrongAnswer3: "Yanlış Cevap")
        
        fiveArray.append(fiveQues1)
        
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
        makeQuestionEasy1()
    }
    
    @IBAction func aFunc(_ sender: Any) {
        if whichButton == "a"{
            // DOGRU
            if correctQuestion == 0{
                self.aButton.layer.borderWidth = 2
                self.aButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionEasy2()
            }
            else if correctQuestion == 1{
                self.aButton.layer.borderWidth = 2
                self.aButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionEasy3()
            }
            else if correctQuestion == 2{
                self.aButton.layer.borderWidth = 2
                self.aButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle4()
            }
            else if correctQuestion == 3{
                self.aButton.layer.borderWidth = 2
                self.aButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle5()
            }
            else if correctQuestion == 4{
                self.aButton.layer.borderWidth = 2
                self.aButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle6()
            }
            else if correctQuestion == 5{
                self.aButton.layer.borderWidth = 2
                self.aButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionHard7()
            }

        }
        else{
            // YANLIS
                self.aButton.layer.borderWidth = 2
                self.aButton.layer.borderColor = UIColor.systemRed.cgColor
        }
    }
    @IBAction func bFunc(_ sender: Any) {
        if whichButton == "b"{
            // DOGRU
            if correctQuestion == 0{
                self.bButton.layer.borderWidth = 2
                self.bButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionEasy2()
            }
            else if correctQuestion == 1{
                self.bButton.layer.borderWidth = 2
                self.bButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionEasy3()
            }
            else if correctQuestion == 2{
                self.bButton.layer.borderWidth = 2
                self.bButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle4()
            }
            else if correctQuestion == 3{
                self.bButton.layer.borderWidth = 2
                self.bButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle5()
            }
            else if correctQuestion == 4{
                self.bButton.layer.borderWidth = 2
                self.bButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle6()
            }
            else if correctQuestion == 5{
                self.bButton.layer.borderWidth = 2
                self.bButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionHard7()
            }
        }
        else{
            // YANLIS
            self.bButton.layer.borderWidth = 2
            self.bButton.layer.borderColor = UIColor.systemRed.cgColor
        }
    }
    @IBAction func cFunc(_ sender: Any) {
        if whichButton == "c"{
            // DOGRU
            if correctQuestion == 0{
                self.cButton.layer.borderWidth = 2
                self.cButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionEasy2()
            }
            else if correctQuestion == 1{
                self.cButton.layer.borderWidth = 2
                self.cButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionEasy3()
            }
            else if correctQuestion == 2{
                self.cButton.layer.borderWidth = 2
                self.cButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle4()
            }
            else if correctQuestion == 3{
                self.cButton.layer.borderWidth = 2
                self.cButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle5()
            }
            else if correctQuestion == 4{
                self.cButton.layer.borderWidth = 2
                self.cButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle6()
            }
            else if correctQuestion == 5{
                self.cButton.layer.borderWidth = 2
                self.cButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionHard7()
            }
        }
        else{
            // YANLIS
            self.cButton.layer.borderWidth = 2
            self.cButton.layer.borderColor = UIColor.systemRed.cgColor
        }
    }
    @IBAction func dFunc(_ sender: Any) {
        if whichButton == "d"{
            // DOGRU
            if correctQuestion == 0{
                self.dButton.layer.borderWidth = 2
                self.dButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionEasy2()
            }
            else if correctQuestion == 1{
                self.dButton.layer.borderWidth = 2
                self.dButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionEasy3()
            }
            else if correctQuestion == 2{
                self.dButton.layer.borderWidth = 2
                self.dButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle4()
            }
            else if correctQuestion == 3{
                self.dButton.layer.borderWidth = 2
                self.dButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle5()
            }
            else if correctQuestion == 4{
                self.dButton.layer.borderWidth = 2
                self.dButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionMiddle6()
            }
            else if correctQuestion == 5{
                self.dButton.layer.borderWidth = 2
                self.dButton.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                makeQuestionHard7()
            }
        }
        else{
            // YANLIS
            self.dButton.layer.borderWidth = 2
            self.dButton.layer.borderColor = UIColor.systemRed.cgColor
        }
    }
    
    func makeQuestionEasy1(){
        buttonBackPurple()
        
        oneArray.shuffle()
        
        questionButton.setTitle(oneArray[0].question, for: .normal)
        
        buttons.shuffle()
        
        buttons[0].setTitle(oneArray[0].trueAnswer, for: .normal)
        buttons[1].setTitle(oneArray[0].wrongAnswer1, for: .normal)
        buttons[2].setTitle(oneArray[0].wrongAnswer2, for: .normal)
        buttons[3].setTitle(oneArray[0].wrongAnswer3, for: .normal)
        
        if buttons[0] == aButton{
            whichButton = "a"
        }
        else if buttons[0] == bButton{
            whichButton = "b"
        }
        else if buttons[0] == cButton{
            whichButton = "c"
        }
        else if buttons[0] == dButton{
            whichButton = "d"
        }
    }
    
    func makeQuestionEasy2(){
        rewardButton.setTitle("2. Soru : 500 TL", for: .normal)
        
        buttonBackPurple()
        
        twoArray.shuffle()
        
        questionButton.setTitle(twoArray[0].question, for: .normal)
        
        buttons.shuffle()
        
        buttons[0].setTitle(twoArray[0].trueAnswer, for: .normal)
        buttons[1].setTitle(twoArray[0].wrongAnswer1, for: .normal)
        buttons[2].setTitle(twoArray[0].wrongAnswer2, for: .normal)
        buttons[3].setTitle(twoArray[0].wrongAnswer3, for: .normal)
        
        if buttons[0] == aButton{
            whichButton = "a"
        }
        else if buttons[0] == bButton{
            whichButton = "b"
        }
        else if buttons[0] == cButton{
            whichButton = "c"
        }
        else if buttons[0] == dButton{
            whichButton = "d"
        }
    }
    
    func makeQuestionEasy3(){
        rewardButton.setTitle("3. Soru : 1000 TL", for: .normal)
        
        buttonBackPurple()
        
        threeArray.shuffle()
        
        questionButton.setTitle(threeArray[0].question, for: .normal)
        
        buttons.shuffle()
        
        buttons[0].setTitle(threeArray[0].trueAnswer, for: .normal)
        buttons[1].setTitle(threeArray[0].wrongAnswer1, for: .normal)
        buttons[2].setTitle(threeArray[0].wrongAnswer2, for: .normal)
        buttons[3].setTitle(threeArray[0].wrongAnswer3, for: .normal)
        
        if buttons[0] == aButton{
            whichButton = "a"
        }
        else if buttons[0] == bButton{
            whichButton = "b"
        }
        else if buttons[0] == cButton{
            whichButton = "c"
        }
        else if buttons[0] == dButton{
            whichButton = "d"
        }
    }
    
    func makeQuestionMiddle4(){
        rewardButton.setTitle("4. Soru : 2500 TL", for: .normal)
        
        buttonBackPurple()
        
        fourArray.shuffle()
        
        questionButton.setTitle(fourArray[0].question, for: .normal)
        
        buttons.shuffle()
        
        buttons[0].setTitle(fourArray[0].trueAnswer, for: .normal)
        buttons[1].setTitle(fourArray[0].wrongAnswer1, for: .normal)
        buttons[2].setTitle(fourArray[0].wrongAnswer2, for: .normal)
        buttons[3].setTitle(fourArray[0].wrongAnswer3, for: .normal)
        
        if buttons[0] == aButton{
            whichButton = "a"
        }
        else if buttons[0] == bButton{
            whichButton = "b"
        }
        else if buttons[0] == cButton{
            whichButton = "c"
        }
        else if buttons[0] == dButton{
            whichButton = "d"
        }
    }
    
    func makeQuestionMiddle5(){
        rewardButton.setTitle("5. Soru : 5000 TL", for: .normal)
        
        buttonBackPurple()
        
        fiveArray.shuffle()
        
        questionButton.setTitle(fiveArray[0].question, for: .normal)
        
        buttons.shuffle()
        
        buttons[0].setTitle(fiveArray[0].trueAnswer, for: .normal)
        buttons[1].setTitle(fiveArray[0].wrongAnswer1, for: .normal)
        buttons[2].setTitle(fiveArray[0].wrongAnswer2, for: .normal)
        buttons[3].setTitle(fiveArray[0].wrongAnswer3, for: .normal)
        
        if buttons[0] == aButton{
            whichButton = "a"
        }
        else if buttons[0] == bButton{
            whichButton = "b"
        }
        else if buttons[0] == cButton{
            whichButton = "c"
        }
        else if buttons[0] == dButton{
            whichButton = "d"
        }
    }
    
    func makeQuestionMiddle6(){
        rewardButton.setTitle("6. Soru : 10000 TL", for: .normal)
        
        buttonBackPurple()
        
        sixArray.shuffle()
        
        questionButton.setTitle(sixArray[0].question, for: .normal)
        
        buttons.shuffle()
        
        buttons[0].setTitle(sixArray[0].trueAnswer, for: .normal)
        buttons[1].setTitle(sixArray[0].wrongAnswer1, for: .normal)
        buttons[2].setTitle(sixArray[0].wrongAnswer2, for: .normal)
        buttons[3].setTitle(sixArray[0].wrongAnswer3, for: .normal)
        
        if buttons[0] == aButton{
            whichButton = "a"
        }
        else if buttons[0] == bButton{
            whichButton = "b"
        }
        else if buttons[0] == cButton{
            whichButton = "c"
        }
        else if buttons[0] == dButton{
            whichButton = "d"
        }
    }
    
    func makeQuestionHard7(){
        rewardButton.setTitle("7. Soru : 50000 TL", for: .normal)
        
        buttonBackPurple()
        
        sevenArray.shuffle()
        
        questionButton.setTitle(sevenArray[0].question, for: .normal)
        
        buttons.shuffle()
        
        buttons[0].setTitle(sevenArray[0].trueAnswer, for: .normal)
        buttons[1].setTitle(sevenArray[0].wrongAnswer1, for: .normal)
        buttons[2].setTitle(sevenArray[0].wrongAnswer2, for: .normal)
        buttons[3].setTitle(sevenArray[0].wrongAnswer3, for: .normal)
        
        if buttons[0] == aButton{
            whichButton = "a"
        }
        else if buttons[0] == bButton{
            whichButton = "b"
        }
        else if buttons[0] == cButton{
            whichButton = "c"
        }
        else if buttons[0] == dButton{
            whichButton = "d"
        }
    }
    
    func buttonBackPurple(){
        myTime = 3
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(pause), userInfo: nil, repeats: true)

        self.aButton.layer.borderWidth = 1
        self.aButton.layer.borderColor = UIColor.systemPurple.cgColor
        self.bButton.layer.borderWidth = 1
        self.bButton.layer.borderColor = UIColor.systemPurple.cgColor
        self.cButton.layer.borderWidth = 1
        self.cButton.layer.borderColor = UIColor.systemPurple.cgColor
        self.dButton.layer.borderWidth = 1
        self.dButton.layer.borderColor = UIColor.systemPurple.cgColor
    }
    
    @objc func pause(){
        myTime -= 1
        if (myTime == 0){
            timer.invalidate()
        }
    }
}
