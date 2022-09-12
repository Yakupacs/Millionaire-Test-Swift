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
    var myTime = 25
    
    var correctQuestion = 0
    
    var reward = 0
    
    @IBOutlet weak var finishLabel: UILabel!
    @IBOutlet weak var retryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionButton.titleLabel?.lineBreakMode = .byWordWrapping
        questionButton.titleLabel?.textAlignment = .center
        aButton.titleLabel?.textAlignment = .left
        
        let oneQues1 = question.init(question: "Araçların bir ana yoldaki trafiğe daha güvenli şekilde katılmaları için yapılmış “katılma şeridi” de denilen şeritlere ne ad verilir?",
                                     trueAnswer: "Hızlanma şeridi",
                                     wrongAnswer1: "Sol şerit",
                                     wrongAnswer2: "Tırmanma şeridi",
                                     wrongAnswer3: "Emniyet şeridi")
        
        let oneQues2 = question.init(question: "Açılış törenlerine veya düğünlere katılamayan kişiler genellikle ne gönderirler?",
                                     trueAnswer: "Çelenk",
                                     wrongAnswer1: "Meyve tabağı",
                                     wrongAnswer2: "İstek şarkı",
                                     wrongAnswer3: "Çek")
        
        let oneQues3 = question.init(question: "“Şuraya ne yazıldıysa o olur” diyen biri parmağıyla nereyi işaret eder?",
                                     trueAnswer: "Alnını",
                                     wrongAnswer1: "Ensesini",
                                     wrongAnswer2: "Avuç içini",
                                     wrongAnswer3: "Göğsünü")
        
        let oneQues4 = question.init(question: "Kıpırdamayın, çekiyorum, çekiyorum, çektim” diyen kişi muhtemelen kimdir?",
                                     trueAnswer: "Fotoğrafçı",
                                     wrongAnswer1: "Ressam",
                                     wrongAnswer2: "Dişçi",
                                     wrongAnswer3: "Niyetçi")
        
        let oneQues5 = question.init(question: "El ve yüz temizliğinde kullanılan, nemlendirilmiş, hoş kokulu “kolonyalı” mendilleri için kullanılan diğer ifade hangisidir?",
                                     trueAnswer: "Islak",
                                     wrongAnswer1: "Sulu",
                                     wrongAnswer2: "Nemli",
                                     wrongAnswer3: "Kokulu")
        
        let oneQues6 = question.init(question: "Uzun süreli bekleyişin sonunda istediğini elde eden kişiler için kullanılan “turnayı gözünden vurdu” şeklinde biten sözün başında hangisi söylenir?",
                                     trueAnswer: "Durdu durdu",
                                     wrongAnswer1: "Baktı baktı",
                                     wrongAnswer2: "Ölçtü biçti",
                                     wrongAnswer3: "Gezdi tozdu")
        
        let oneQues7 = question.init(question: "“Kendimi de sayayım mı?” şeklinde bir cevap alındıysa, sorulan soru muhtemelen hangisidir?",
                                     trueAnswer: "Kaç kişisiniz?",
                                     wrongAnswer1: "Kaçta gelirsiniz?",
                                     wrongAnswer2: "En son kaça olur?",
                                     wrongAnswer3: "Kaça gidiyorsun?")
        
        let oneQues8 = question.init(question: "Halk arasında kullanılan söze göre hangisi kara gün içindir?",
                                     trueAnswer: "Ak akçe",
                                     wrongAnswer1: "Kuru bakır",
                                     wrongAnswer2: "Keskin sirek",
                                     wrongAnswer3: "Acı kahve")
        
        let oneQues9 = question.init(question: "Sorduğunuz soruya “Ben de yabancısıyım” cevabını alıyorsanız, muhtemelen hangisini sormuşsunuzdur?",
                                     trueAnswer: "Adres tarifi",
                                     wrongAnswer1: "Hal hatır",
                                     wrongAnswer2: "Saat",
                                     wrongAnswer3: "Memleket")
        
        let oneQues10 = question.init(question: "“Çayın daha 5 dakikası var” diyen biri çayla ilgili muhtemelen hangisini söylemek istiyordur?",
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
        
        let twoQues1 = question.init(question: "Halı saha maçlarında hangisi genellikle görülmez?",
                                     trueAnswer: "Taç atışı",
                                     wrongAnswer1: "Köşe vuruşu",
                                     wrongAnswer2: "Serbest vuruş",
                                     wrongAnswer3: "Penaltı")
        
        let twoQues2 = question.init(question: "Halk arasında kullanılan bir sözde, peynir gemisinin hangisiyle yürümeyeceğinden bahsedilir?",
                                     trueAnswer: "Lafla",
                                     wrongAnswer1: "Sözle",
                                     wrongAnswer2: "Tezahüratla",
                                     wrongAnswer3: "Gazla")
        
        let twoQues3 = question.init(question: "Bir nikah öncesinde, gelinin bekar arkadaşları genellikle nereye isimlerini yazarlar?",
                                     trueAnswer: "Gelinin ayakkabısının altına",
                                     wrongAnswer1: "Gelinin duvağının içine",
                                     wrongAnswer2: "Gelin buketinin kenarlarına",
                                     wrongAnswer3: "Gelin alnının üstüne")
        
        let twoQues4 = question.init(question: "Arkadaşınız size hangisini söylerse, inat ederek yaptığınız bir işin sonucunda kimsenin fayda görmediğini düşünüyor demektir?",
                                     trueAnswer: "Başın göğe erdi mi?",
                                     wrongAnswer1: "Ne münasebet?",
                                     wrongAnswer2: "Hiç mi yok?",
                                     wrongAnswer3: "Neden ben?")
        
        let twoQues5 = question.init(question: "İnternet sitelerinde yer alan “SSS”nin açılımında, “Sorulan Sorular”dan önce hangi kelime gelir?",
                                     trueAnswer: "Sıkça",
                                     wrongAnswer1: "Sabırsızca",
                                     wrongAnswer2: "Sinsince",
                                     wrongAnswer3: "Saatlerce")
        
        let twoQues6 = question.init(question: "“Pilot”, “dolma” ve “kurşun” hangisinin çeşitlerine verilen isimlerdir?",
                                     trueAnswer: "Kalem",
                                     wrongAnswer1: "Defter",
                                     wrongAnswer2: "Silgi",
                                     wrongAnswer3: "Cetvel")
        
        let twoQues7 = question.init(question: "İlkokulda, sınıfta konuşanların ve yaramazlık yapanların adını tahtaya yazan öğrenci genellikle kim olur?",
                                     trueAnswer: "Sınıf başkanı",
                                     wrongAnswer1: "Temizlik kolu başkanı",
                                     wrongAnswer2: "İlk yardım kolu başkanı",
                                     wrongAnswer3: "Kütüphane kolu başkanı")
        
        let twoQues8 = question.init(question: "İçinden çıkılması güç bir durum karşısında söylenen “Doluya koydum almadı” şeklinde başlayan sözün devamı nasıldır?",
                                     trueAnswer: "Boşa koydum dolmadı",
                                     wrongAnswer1: "Elimde hiç kalmadı",
                                     wrongAnswer2: "Döküldü azalmadı",
                                     wrongAnswer3: "Bu iş böyle olmadı")
        
        let twoQues9 = question.init(question: "Halk arasında “üstüne titremek” ifadesi hangi anlamda kullanılır?",
                                     trueAnswer: "Sevmek ve özen göstermek",
                                     wrongAnswer1: "Utanmak ve sıkılmak",
                                     wrongAnswer2: "Korkmak ve çekinmek",
                                     wrongAnswer3: "Afallamak ve şaşmak")
        
        let twoQues10 = question.init(question: "İnternetin ilk zamanlarında sıkça kullanılan, “internet sitelerinde rastgele gezinmek” anlamına gelen söz hangisidir?",
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
        
        let threeQues1 = question.init(question: "“Seninki 3 oktav olduğu için tizlere rahat çıkabiliyorsun” denilen birinin mesleği muhtemelen hangisidir?",
                                       trueAnswer: "Şarkıcı",
                                       wrongAnswer1: "Balet",
                                       wrongAnswer2: "Jonglör",
                                       wrongAnswer3: "Pandomim Sanatçısı")
        
        let threeQues2 = question.init(question: "“Sabah zumba dersim var akşam da spinning dersine gireceğim” diyen biri bu dersleri muhtemelen nerede alacaktır?",
                                       trueAnswer: "Spor Salonunda",
                                       wrongAnswer1: "Kütüphanede",
                                       wrongAnswer2: "Halı sahada",
                                       wrongAnswer3: "Düğün salonunda")
        
        let threeQues3 = question.init(question: "Tuttuğu bozuk parayı parmaklarının arasında dolaştıran sihirbaz, avcunu açıp kaybolduğunu gösterdikten sonra parayı genellikle neresinden çıkartır?",
                                       trueAnswer: "Kulağının arkasından",
                                       wrongAnswer1: "Çenesinin altından",
                                       wrongAnswer2: "Başının üstünden",
                                       wrongAnswer3: "Ağzının içinden")
        
        let threeQues4 = question.init(question: "“Senin o anlattığın devede kulak” diyen biri bahsettiği şey hakkında hangisini söylemek istiyordur?",
                                       trueAnswer: "Çok küçük ve yetersiz",
                                       wrongAnswer1: "Çok karmaşık ve anlamsız",
                                       wrongAnswer2: "Çok büyük ve dikkat çekici",
                                       wrongAnswer3: "Çok detaylı ve derin")
        
        let threeQues5 = question.init(question: "Otomobil yıkamaya verilirken yıkanması gereken yerler genellikle nasıl belirtilir?",
                                       trueAnswer: "İç dış",
                                       wrongAnswer1: "Ön arka",
                                       wrongAnswer2: "Alt üst",
                                       wrongAnswer3: "Cam çerçeve")
        
        let threeQues6 = question.init(question: "““Çatallı” ifadesi hangisinin kusurlu olanı için kullanılır?",
                                       trueAnswer: "Ses",
                                       wrongAnswer1: "Görüntü",
                                       wrongAnswer2: "Koku",
                                       wrongAnswer3: "Tat")
        
        let threeQues7 = question.init(question: "Sevdiği kişiye “serenat” yaptığı söylenen biri hangisini yapmış demektir?",
                                       trueAnswer: "Açık havada şarkı söylemek",
                                       wrongAnswer1: "Kapalı alanda dans etmek",
                                       wrongAnswer2: "Adına şiirler yazmak",
                                       wrongAnswer3: "Yollarına gül dökmek")
        
        let threeQues8 = question.init(question: "Halk arasında söze göre horozu çok olan köyde hangisi geç olur?",
                                       trueAnswer: "Sabah",
                                       wrongAnswer1: "Akşam",
                                       wrongAnswer2: "Öğlen",
                                       wrongAnswer3: "Bayram")
        
        let threeQues9 = question.init(question: "Halk arasında kullanılan ve “yakar” şeklinde biten sözün başı nasıldır?",
                                       trueAnswer: "İçi beni dışı seni",
                                       wrongAnswer1: "Dışı beni içi seni",
                                       wrongAnswer2: "İçi seni dışı beni",
                                       wrongAnswer3: "Dışı seni içi teni")
        
        let threeQues10 = question.init(question: "“İmar geldiği zaman çok değerlenecek” vaadiyle satılan şey hangisi olabilir?",
                                       trueAnswer: "Arsa",
                                       wrongAnswer1: "Araba",
                                       wrongAnswer2: "Tekne",
                                       wrongAnswer3: "Tablo")
        
        threeArray.append(threeQues1)
        threeArray.append(threeQues2)
        threeArray.append(threeQues3)
        threeArray.append(threeQues4)
        threeArray.append(threeQues5)
        threeArray.append(threeQues6)
        threeArray.append(threeQues7)
        threeArray.append(threeQues8)
        threeArray.append(threeQues9)
        threeArray.append(threeQues10)
        
        let fourQues1 = question.init(question: "Değeri olan şeyleri, kimseleri koruyan veya sayan, iyilikbilir kişiler için kullanılan ifade hangisidir?",
                                      trueAnswer: "Kadirşinas",
                                      wrongAnswer1: "Müşkülpesent",
                                      wrongAnswer2: "Nanemolla",
                                      wrongAnswer3: "Vakur")
        
        let fourQues2 = question.init(question: "“Akçaabat”, “İnegöl”, “Tire” gibi yerlerin hangi tür yiyeceği meşhurdur?",
                                      trueAnswer: "Köfte",
                                      wrongAnswer1: "Dondurma",
                                      wrongAnswer2: "Kebap",
                                      wrongAnswer3: "Helva")
        
        let fourQues3 = question.init(question: "“Göbekli”, “şeker” ve “kan” hangi meyvenin türleridir?",
                                      trueAnswer: "Portakal",
                                      wrongAnswer1: "Mandalina",
                                      wrongAnswer2: "Kiraz",
                                      wrongAnswer3: "Karpuz")
        
        let fourQues4 = question.init(question: "Boksta, bükük kolla aşağıdan yukarıya doğru çeneye atılan yumruğa ne ad verilir?",
                                      trueAnswer: "Aparkat",
                                      wrongAnswer1: "Punch",
                                      wrongAnswer2: "Swing",
                                      wrongAnswer3: "Kroşe")
        
        let fourQues5 = question.init(question: "Sebzeli, etli birçok farklı tarifle hazırlanan, Çin mutfağına özgü, çorba içinde pişirilen erişte veya şehriyeye ne ad verilir?",
                                      trueAnswer: "Noodle",
                                      wrongAnswer1: "Wasabi",
                                      wrongAnswer2: "Tofu",
                                      wrongAnswer3: "Taco")
        
        let fourQues6 = question.init(question: "Size izlemediğiniz bir filmle ilgili hangisi söyleyen kişi “spoiler” vermiş olur?",
                                      trueAnswer: "Sonunun nasıl bittiğini",
                                      wrongAnswer1: "Başrol oyuncusunun adını",
                                      wrongAnswer2: "Yönetmenin kim olduğunu",
                                      wrongAnswer3: "Hangi ülkede çekildiğini")
        
        let fourQues7 = question.init(question: "40 yolcusu bulunan bir belediye otobüsünden, bir durakta 15 yolcu inip 9 yeni yolcu binmişse, son durumda yolcu sayısı kaç olur?",
                                      trueAnswer: "34",
                                      wrongAnswer1: "36",
                                      wrongAnswer2: "44",
                                      wrongAnswer3: "46")
        
        let fourQues8 = question.init(question: "“Karaman”, “merinos”, “kıvırcık” hangi hayvanın türleridir?",
                                      trueAnswer: "Koyun",
                                      wrongAnswer1: "At",
                                      wrongAnswer2: "Sığır",
                                      wrongAnswer3: "Keçi")
        
        let fourQues9 = question.init(question: "Sezen Aksu, “Gülümse, hadi gülümse, bulutlar gitsin” diye başlayan şarkısında, hangi hayvanının bile olmadığından bahseder?",
                                      trueAnswer: "Kedi",
                                      wrongAnswer1: "Köpek",
                                      wrongAnswer2: "Tavşan",
                                      wrongAnswer3: "Kuş")
        
        let fourQues10 = question.init(question: "“Kırlent” hangisinin bir türüdür?",
                                      trueAnswer: "Yastık",
                                      wrongAnswer1: "Halı",
                                      wrongAnswer2: "Nevresim",
                                      wrongAnswer3: "Yorgan")
        
        fourArray.append(fourQues1)
        fourArray.append(fourQues2)
        fourArray.append(fourQues3)
        fourArray.append(fourQues4)
        fourArray.append(fourQues5)
        fourArray.append(fourQues6)
        fourArray.append(fourQues7)
        fourArray.append(fourQues8)
        fourArray.append(fourQues9)
        fourArray.append(fourQues10)
        
        let fiveQues1 = question.init(question: "Haberlerde “Avam Kamarası'nda kabul edilen yasa tasarısı, Lordlar Kamarası'nda görüşülecek” cümlesini duyduysanız, bahsi geçen ülke hangisidir?",
                                      trueAnswer: "İngiltere",
                                      wrongAnswer1: "İsveç",
                                      wrongAnswer2: "Danimarka",
                                      wrongAnswer3: "Almanya")
        
        let fiveQues2 = question.init(question: "Yeşilçam’da “Karacaoğlan” ve “Tarkan” karakterlerini canlandıran, “Tosun Paşa” ve “Hababam Sınıfı Dokuz Doğuruyor” filmlerini yöneten kişi kimdir?",
                                      trueAnswer: "Kartal Tiber",
                                      wrongAnswer1: "Ekrem Bora",
                                      wrongAnswer2: "Ediz Hun",
                                      wrongAnswer3: "Yılmaz Güney")
        
        let fiveQues3 = question.init(question: "Bir giysinin iki yanını bitiştirmeye yarayan ve metal bir halka ile bir çengelden oluşan araca ne ad verilir?",
                                      trueAnswer: "Kopça",
                                      wrongAnswer1: "Gergef",
                                      wrongAnswer2: "Yüksük",
                                      wrongAnswer3: "Çile")
        
        let fiveQues4 = question.init(question: "Uçabilen bir fil olan çizgi film kahramanı “Dumbo”, hikayeye göre hangisi sayesinde uçabilmektedir?",
                                      trueAnswer: "Kulakları",
                                      wrongAnswer1: "Gözleri",
                                      wrongAnswer2: "Ayakları",
                                      wrongAnswer3: "Hortumu")
        
        let fiveQues5 = question.init(question: "Giymiş oldukları “19” ve “03” sırt numaralı formalarıyla yan yana gelen sevgililer, hangi takıma olan sevgilerini gösterirler?",
                                      trueAnswer: "Beşiktaş",
                                      wrongAnswer1: "Trabzonspor",
                                      wrongAnswer2: "Galatasaray",
                                      wrongAnswer3: "Fenerbahçe")
        
        let fiveQues6 = question.init(question: "İçi yumuşak, oturduğunuzda kolayca şekil alan, kalın kumaşla kaplı koltuk çeşidi hangi meyvenin adıyla anılır?",
                                      trueAnswer: "Armut",
                                      wrongAnswer1: "Ayva",
                                      wrongAnswer2: "Kavun",
                                      wrongAnswer3: "Kayısı")
        
        let fiveQues7 = question.init(question: "Bir futbol sahasında çeyrek daireler nerede bulunur?",
                                      trueAnswer: "Korner köşelerinde",
                                      wrongAnswer1: "Ceza alanında",
                                      wrongAnswer2: "Orta sahada",
                                      wrongAnswer3: "Altıpasta")
        
        let fiveQues8 = question.init(question: "Et ve balık gibi yiyecekleri odun veya saman dumanına tutarak yapılan işleme ne ad verilir?",
                                      trueAnswer: "Tütsülemek",
                                      wrongAnswer1: "Buğulama",
                                      wrongAnswer2: "Sotelemek",
                                      wrongAnswer3: "Mühürlemek")
        
        let fiveQues9 = question.init(question: "Eski kuşaklar tarafından “ikilem” anlamında kullanılan kelime hangisidir?",
                                      trueAnswer: "Dilemma",
                                      wrongAnswer1: "Mamafih",
                                      wrongAnswer2: "Atalet",
                                      wrongAnswer3: "Sitayiş")
        
        let fiveQues10 = question.init(question: "İçeriden görülmeden dışarıyı görmeyi sağlayan, şerit biçiminde metal veya plastik levhalardan yapılmış pencere kapama düzenine ne ad verilir?",
                                      trueAnswer: "Jaluzi",
                                      wrongAnswer1: "Agraf",
                                      wrongAnswer2: "Korniş",
                                      wrongAnswer3: "Rivet")
        
        fiveArray.append(fiveQues1)
        fiveArray.append(fiveQues2)
        fiveArray.append(fiveQues3)
        fiveArray.append(fiveQues4)
        fiveArray.append(fiveQues5)
        fiveArray.append(fiveQues6)
        fiveArray.append(fiveQues7)
        fiveArray.append(fiveQues8)
        fiveArray.append(fiveQues9)
        fiveArray.append(fiveQues10)
        
        let sixQues1 = question.init(question: "Auguste ve Louis Lumiere kardeşler, hangi alanda verdikleri eserlerle bilinen isimlerdir?",
                                      trueAnswer: "Sinema",
                                      wrongAnswer1: "Müzik",
                                      wrongAnswer2: "Edebiyat",
                                      wrongAnswer3: "Heykel")
        
        let sixQues2 = question.init(question: "Bir büyükelçinin temsilci olarak bulunduğu ülke dışına çıkması durumunda veya o ülkeye gelmesinden önce ona vekalet eden diplomata ne ad verilir?",
                                      trueAnswer: "Maslahatgüzar",
                                      wrongAnswer1: "Ataşe",
                                      wrongAnswer2: "Konsolos",
                                      wrongAnswer3: "Müsteşar")
        
        let sixQues3 = question.init(question: "Hangisi Türkçedeki ünlü harfleri iki karşı gruba ayıran başlıklardan biri değildir?",
                                      trueAnswer: "Sert-Yumuşak",
                                      wrongAnswer1: "Kalın-İnce",
                                      wrongAnswer2: "Düz-Yuvarlak",
                                      wrongAnswer3: "Geniş-Dar")
        
        let sixQues4 = question.init(question: "Ilgaz Dağları'nda dolaştığını söyleyen biri hangi iki il sınırları içerisinde geziyor demektir?",
                                      trueAnswer: "Kastamonu-Çankırı",
                                      wrongAnswer1: "Sakarya-Bolu",
                                      wrongAnswer2: "Sinop-Samsun",
                                      wrongAnswer3: "Amasya-Giresun")
        
        let sixQues5 = question.init(question: "Hangisinin adıyla anılan ve atkı, hırka gibi kıyafetlerde kullanılan bir tür örgü biçimi vardır?",
                                      trueAnswer: "Selanik",
                                      wrongAnswer1: "Beyrut",
                                      wrongAnswer2: "Üsküp",
                                      wrongAnswer3: "Sofya")
        
        let sixQues6 = question.init(question: "“Manfred”, “Sid” ve “Diego” hangi animasyon filminin karakterleridir?",
                                      trueAnswer: "Buz Devri",
                                      wrongAnswer1: "Aslan Kral",
                                      wrongAnswer2: "Oyuncak Hikayesi",
                                      wrongAnswer3: "Kung Fu Panda")
        
        let sixQues7 = question.init(question: "“Armadillo” nedir?",
                                      trueAnswer: "Bir hayvandır",
                                      wrongAnswer1: "Bir ülkedir",
                                      wrongAnswer2: "Bir coğrafi şekildir",
                                      wrongAnswer3: "Bir giysidir")
        
        let sixQues8 = question.init(question: "Genellikle gelinliklerin içine kabarık görüntü vermesi için konulan giysiye ne ad verilir?",
                                      trueAnswer: "Tarlatan",
                                      wrongAnswer1: "Jile",
                                      wrongAnswer2: "Klapa",
                                      wrongAnswer3: "Tayyör")
        
        let sixQues9 = question.init(question: "Profesyonel video çekimlerinde, çekime başlamadan önce kameralarda hangi rengi temel alan bir ayar yapılır?",
                                      trueAnswer: "Beyaz",
                                      wrongAnswer1: "Kırmızı",
                                      wrongAnswer2: "Sarı",
                                      wrongAnswer3: "Mavi")
        
        let sixQues10 = question.init(question: "Halk arasında, yaşanan karmaşık durumların benzetildiği, başkarakterleri J.R., Bobby, Ellie ve Sue Ellen olan 1980'lerin ünlü dizisi hangisidir?",
                                      trueAnswer: "Dallas",
                                      wrongAnswer1: "Miami Vice",
                                      wrongAnswer2: "Cosby Ailesi",
                                      wrongAnswer3: "Bizim Ev")
        
        sixArray.append(sixQues1)
        sixArray.append(sixQues2)
        sixArray.append(sixQues3)
        sixArray.append(sixQues4)
        sixArray.append(sixQues5)
        sixArray.append(sixQues6)
        sixArray.append(sixQues7)
        sixArray.append(sixQues8)
        sixArray.append(sixQues9)
        sixArray.append(sixQues10)
        
        let sevenQues1 = question.init(question: "“Kuşlar”, “Bulutlar” ve “Eşek Arıları” adlı tiyatro eserleri, Antik Çağ'ın en önemli komedya yazarlarından olan hangi yazara aittir?",
                                      trueAnswer: "Aristofanes",
                                      wrongAnswer1: "Euripides",
                                      wrongAnswer2: "Demokritos",
                                      wrongAnswer3: "Sofokles")
        
        let sevenQues2 = question.init(question: "Mezar taşında “Dedi Kuzgun: Bir daha asla!” yazan şair ve yazar kimdir?",
                                      trueAnswer: "Edgar Allan Poe",
                                      wrongAnswer1: "Emily Dickinson",
                                      wrongAnswer2: "Pablo Neruda",
                                      wrongAnswer3: "T.S. Eliot")
        
        let sevenQues3 = question.init(question: "“Karartma Geceleri”, “Bacaksız Okulda” ve “Sarı Yazma” kitapları hangi yazara aittir?",
                                      trueAnswer: "Rıfat Ilgaz",
                                      wrongAnswer1: "Haldun Taner",
                                      wrongAnswer2: "Kemalettin Tuğcu",
                                      wrongAnswer3: "Orhan Kemal")
        
        let sevenQues4 = question.init(question: "“İnsan Ne ile Yaşar” ve “Kreutzer Sonat” kitaplarının yazarı kimdir?",
                                      trueAnswer: "Lev Tolstoy",
                                      wrongAnswer1: "Necib Mahfuz",
                                      wrongAnswer2: "Halit Hüseyni",
                                      wrongAnswer3: "Goethe")
        
        let sevenQues5 = question.init(question: "Türk edebiyatının ilk realist roman örneği sayılan “Araba Sevdası” eseri kime aittir?",
                                      trueAnswer: "Recaizade Mahmud Ekrem",
                                      wrongAnswer1: "Muallim Naci",
                                      wrongAnswer2: "Ahmet Mithat Efendi",
                                      wrongAnswer3: "Nabizade Nazım")
        
        let sevenQues6 = question.init(question: "“Bilginin Arkeolojisi” ve “Kelimeler ve Şeyler” kitaplarının yazarı, tarihçi, eleştirmen ve sosyolog kimdir?",
                                      trueAnswer: "Michel Foucault",
                                      wrongAnswer1: "Noam Chomsky",
                                      wrongAnswer2: "Louis Althusser",
                                      wrongAnswer3: "Jacques Lacan")
        
        let sevenQues7 = question.init(question: "“Küçük Deniz Kızı” adlı kitabın yazarı olan ve çıktığı Avrupa gezisinden sonra kaleme aldığı “Bir Şairin Çarşısı” adlı eserinde İstabul’u anlatan yazar hangisidir?",
                                      trueAnswer: "Hans Christian Andersen",
                                      wrongAnswer1: "Carlo Collodi",
                                      wrongAnswer2: "Jonathan Swift",
                                      wrongAnswer3: "La Fontaine")
        
        let sevenQues8 = question.init(question: "Yunan mitolojisinde berberinin bir kuyuya, kulaklarının eşek kulakları olduğu sırrını söylediği Midas hangi ülkenin kralıdır?",
                                      trueAnswer: "Frigya",
                                      wrongAnswer1: "Makedonya",
                                      wrongAnswer2: "İyonya",
                                      wrongAnswer3: "Hitit")
        
        let sevenQues9 = question.init(question: "Başkarakterleri Dr. Jack, Sawyer ve Kate olan, gizemli senaryosuyla büyük ilgi toplayan, finaliyle bir kısım hayranını hayal kırıklığına uğratan dizi hangisidir?",
                                      trueAnswer: "Lost",
                                      wrongAnswer1: "Breaking Bad",
                                      wrongAnswer2: "Dr.Who",
                                      wrongAnswer3: "Fringe")
        
        let sevenQues10 = question.init(question: "Kağıda alerjisi olduğu bilinen, “Beyaz Gemi” ve “Toprak Ana” romanlarının yazarı kimdir?",
                                      trueAnswer: "Cengiz Aytmatov",
                                      wrongAnswer1: "Tarık Buğra",
                                      wrongAnswer2: "Halil Cibran",
                                      wrongAnswer3: "Mihail Şolohov")
        
        sevenArray.append(sevenQues1)
        sevenArray.append(sevenQues2)
        sevenArray.append(sevenQues3)
        sevenArray.append(sevenQues4)
        sevenArray.append(sevenQues5)
        sevenArray.append(sevenQues6)
        sevenArray.append(sevenQues7)
        sevenArray.append(sevenQues8)
        sevenArray.append(sevenQues9)
        sevenArray.append(sevenQues10)
        
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
        // A BUTTON
        buttonFunc(buttonName: "a",button: aButton)
    }
    @IBAction func bFunc(_ sender: Any) {
        // B BUTTON
        buttonFunc(buttonName: "b",button: bButton)
    }
    @IBAction func cFunc(_ sender: Any) {
        // C BUTTON
        buttonFunc(buttonName: "c",button: cButton)
    }
    @IBAction func dFunc(_ sender: Any) {
        // D BUTTON
        buttonFunc(buttonName: "d",button: dButton)
    }
    @IBAction func halfButton(_ sender: Any) {
        // YARI YARIYA JOKER
        buttons[1].setTitle("", for: .normal)
        buttons[2].setTitle("", for: .normal)
        buttons[1].isEnabled = false
        buttons[2].isEnabled = false
        yariYariyaButton.isHidden = true
    }
    @IBAction func telephoneButton(_ sender: Any) {
        // TELEFON JOKERİ
        telefonButton.isHidden = true
    }
    
    func makeQuestionEasy1(){
        // 1.SORU ÇAĞIRMA
        myTime = 25
        oneArray.shuffle()
        makeQuestion(level: "1", reward: "100", question: oneArray)
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTimer), userInfo: nil, repeats: true)
    }
    
    func makeQuestionEasy2(){
        // 2.SORU ÇAĞIRMA
        myTime = 25
        twoArray.shuffle()
        makeQuestion(level: "2", reward: "500", question: twoArray)
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTimer), userInfo: nil, repeats: true)
    }
    
    func makeQuestionEasy3(){
        // 3.SORU ÇAĞIRMA
        myTime = 60
        threeArray.shuffle()
        makeQuestion(level: "3", reward: "1000", question: threeArray)
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTimer), userInfo: nil, repeats: true)
    }
    
    func makeQuestionMiddle4(){
        // 4.SORU ÇAĞIRMA
        myTime = 60
        fourArray.shuffle()
        makeQuestion(level: "4", reward: "5000", question: fourArray)
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTimer), userInfo: nil, repeats: true)
    }
    
    func makeQuestionMiddle5(){
        // 5.SORU ÇAĞIRMA
        myTime = 120
        fiveArray.shuffle()
        makeQuestion(level: "5", reward: "10000", question: fiveArray)
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTimer), userInfo: nil, repeats: true)
    }
    
    func makeQuestionMiddle6(){
        // 6.SORU ÇAĞIRMA
        timer.invalidate()
        sixArray.shuffle()
        makeQuestion(level: "6", reward: "25000", question: sixArray)
    }
    
    func makeQuestionHard7(){
        // 7.SORU ÇAĞIRMA
        sevenArray.shuffle()
        makeQuestion(level: "7", reward: "50000", question: sevenArray)
    }
    
    func buttonBackPurple(){
        // BUTTON BORDER COLOR PURPLE
        self.aButton.layer.borderWidth = 1
        self.aButton.layer.borderColor = UIColor.systemPurple.cgColor
        self.bButton.layer.borderWidth = 1
        self.bButton.layer.borderColor = UIColor.systemPurple.cgColor
        self.cButton.layer.borderWidth = 1
        self.cButton.layer.borderColor = UIColor.systemPurple.cgColor
        self.dButton.layer.borderWidth = 1
        self.dButton.layer.borderColor = UIColor.systemPurple.cgColor
    }


    func buttonFunc(buttonName : String ,button : UIButton){
        if whichButton == "\(buttonName)"{
            // DOGRU
            if correctQuestion == 0{
                button.layer.borderWidth = 2
                button.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                reward = 100
                makeQuestionEasy2()
            }
            else if correctQuestion == 1{
                button.layer.borderWidth = 2
                button.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                reward = 500
                makeQuestionEasy3()
            }
            else if correctQuestion == 2{
                button.layer.borderWidth = 2
                button.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                reward = 1000
                makeQuestionMiddle4()
            }
            else if correctQuestion == 3{
                button.layer.borderWidth = 2
                button.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                reward = 5000
                makeQuestionMiddle5()
            }
            else if correctQuestion == 4{
                button.layer.borderWidth = 2
                button.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                reward = 10000
                timerButton.setTitle("-", for: .normal)
                makeQuestionMiddle6()
            }
            else if correctQuestion == 5{
                button.layer.borderWidth = 2
                button.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                reward = 25000
                makeQuestionHard7()
            }
            else if correctQuestion == 6{
                button.layer.borderWidth = 2
                button.layer.borderColor = UIColor.systemGreen.cgColor
                correctQuestion += 1
                reward = 50000
                aButton.isEnabled = false
                bButton.isEnabled = false
                cButton.isEnabled = false
                dButton.isEnabled = false
                seyirciButton.isEnabled = false
                telefonButton.isEnabled = false
                yariYariyaButton.isEnabled = false
                retryButton.isHidden = false
                finishLabel.text = "Tebrikler, Büyük ödülü kazandınız!"
                finishLabel.isHidden = false
            }
        }
        else{
            // YANLIS
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.systemRed.cgColor
            aButton.isEnabled = false
            bButton.isEnabled = false
            cButton.isEnabled = false
            dButton.isEnabled = false
            telefonButton.isEnabled = false
            seyirciButton.isEnabled = false
            yariYariyaButton.isEnabled = false
            
            finishLabel.text = "Elendiniz. Kazandığınız Tutar: \(reward) TL"
            finishLabel.isHidden = false
            retryButton.isHidden = false
            timerButton.setTitle("", for: .normal)
            timer.invalidate()
        }
    }
    
    func makeQuestion(level : String ,reward : String, question : [question]){
        // MAKE QUESTION
        rewardButton.setTitle("\(level). Soru : \(reward) TL", for: .normal)
        
        buttonBackPurple()
        
        questionButton.setTitle(question[0].question, for: .normal)
        
        buttons.shuffle()
        
        buttons[1].isEnabled = true
        buttons[2].isEnabled = true
        
        buttons[0].setTitle(question[0].trueAnswer, for: .normal)
        buttons[1].setTitle(question[0].wrongAnswer1, for: .normal)
        buttons[2].setTitle(question[0].wrongAnswer2, for: .normal)
        buttons[3].setTitle(question[0].wrongAnswer3, for: .normal)
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TRANSFER
        if segue.identifier == "toTelephone"{
            let telVC = segue.destination as! ViewControllerTelephone
            telVC.answer = buttons[0].titleLabel!.text!
            telVC.question = questionButton.titleLabel!.text!
            telefonButton.isHidden = true
        }
        if segue.identifier == "toSeyirci"{
            let seyirciVC = segue.destination as! ViewControllerSeyirci
            seyirciVC.trueAnswer = buttons[0].titleLabel!.text!
            seyirciVC.whichButton = whichButton
            seyirciButton.isHidden = true
        }
    }
    
    @IBAction func retryFunc(_ sender: Any) {
        // RETRY BUTTON
        finishLabel.isHidden = true
        retryButton.isHidden = true
        aButton.isEnabled = true
        bButton.isEnabled = true
        cButton.isEnabled = true
        dButton.isEnabled = true
        aButton.isHidden = false
        bButton.isHidden = false
        cButton.isHidden = false
        dButton.isHidden = false
        seyirciButton.isHidden = false
        telefonButton.isHidden = false
        yariYariyaButton.isHidden = false
        seyirciButton.isEnabled = true
        telefonButton.isEnabled = true
        yariYariyaButton.isEnabled = true
        reward = 0
        correctQuestion = 0
        makeQuestionEasy1()
    }
    
    @IBAction func seyirciButton(_ sender: Any) {
        // SEYİRCİ BUTTON
        seyirciButton.isHidden = true
    }
    
    @objc func countTimer(){
        myTime -= 1
        timerButton.setTitle("\(myTime)", for: .normal)
        if myTime == 0{
            timer.invalidate()
            aButton.isEnabled = false
            bButton.isEnabled = false
            cButton.isEnabled = false
            dButton.isEnabled = false
            telefonButton.isEnabled = false
            seyirciButton.isEnabled = false
            yariYariyaButton.isEnabled = false
            
            finishLabel.text = "Elendiniz. Kazandığınız Tutar: \(reward) TL"
            finishLabel.isHidden = false
            retryButton.isHidden = false
        }
    }
    
    
    /*
    func addFailAnimation(){
        let animationReward = CABasicAnimation(keyPath: "reward")
        animationReward.duration = 0.07
        animationReward.repeatCount = 3
        animationReward.autoreverses = true
        animationReward.fromValue = NSValue(cgPoint: CGPoint(x: rewardButton.center.x - 5, y: rewardButton.center.y - 5))
        animationReward.toValue = NSValue(cgPoint: CGPoint(x: rewardButton.center.x + 5, y: rewardButton.center.y + 5))
        
        let animationQuestion = CABasicAnimation(keyPath: "questionButton")
        animationQuestion.duration = 0.07
        animationQuestion.repeatCount = 3
        animationQuestion.autoreverses = true
        animationQuestion.fromValue = NSValue(cgPoint: CGPoint(x: 100, y: 100))
        animationQuestion.toValue = NSValue(cgPoint: CGPoint(x: questionButton.center.x + 5, y: questionButton.center.y + 5))
        
        let animationA = CABasicAnimation(keyPath: "aButton")
        animationA.duration = 0.07
        animationA.repeatCount = 3
        animationA.autoreverses = true
        animationA.fromValue = NSValue(cgPoint: CGPoint(x: aButton.center.x - 5, y: aButton.center.y - 5))
        animationA.toValue = NSValue(cgPoint: CGPoint(x: aButton.center.x + 5, y: aButton.center.y + 5))
        
        let animationB = CABasicAnimation(keyPath: "bButton")
        animationB.duration = 0.07
        animationB.repeatCount = 3
        animationB.autoreverses = true
        animationB.fromValue = NSValue(cgPoint: CGPoint(x: bButton.center.x - 5, y: bButton.center.y - 5))
        animationB.toValue = NSValue(cgPoint: CGPoint(x: bButton.center.x + 5, y: bButton.center.y + 5))
        
        let animationC = CABasicAnimation(keyPath: "cButton")
        animationC.duration = 0.07
        animationC.repeatCount = 3
        animationC.autoreverses = true
        animationC.fromValue = NSValue(cgPoint: CGPoint(x: cButton.center.x - 5, y: cButton.center.y - 5))
        animationC.toValue = NSValue(cgPoint: CGPoint(x: cButton.center.x + 5, y: cButton.center.y + 5))
        
        let animationD = CABasicAnimation(keyPath: "dButton")
        animationD.duration = 0.07
        animationD.repeatCount = 3
        animationD.autoreverses = true
        animationD.fromValue = NSValue(cgPoint: CGPoint(x: dButton.center.x - 5, y: dButton.center.y - 5))
        animationD.toValue = NSValue(cgPoint: CGPoint(x: dButton.center.x + 5, y: dButton.center.y + 5))

        rewardButton.layer.add(animationReward, forKey: "reward")
        aButton.layer.add(animationA, forKey: "aButton")
        bButton.layer.add(animationB, forKey: "bButton")
        cButton.layer.add(animationC, forKey: "cButton")
        dButton.layer.add(animationD, forKey: "dButton")
        questionButton.layer.add(animationQuestion, forKey: "questionButton")
    }
     */
    

}
