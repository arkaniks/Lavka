//
//  ViewController.swift
//  lavka
//
//  Created by Владислав on 18.06.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    
    let LocalMeneger = CLLocationManager()
    
    override func viewDidLoad() { // до загрузки карты
        super.viewDidLoad()
   MapView.register(LavkaMarkers.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier ) // Стандарт цвета и картинки для анатоций
     
    }
    override func viewDidAppear(_ animated: Bool) { //после загрузки карты
        super.viewDidAppear(animated)
        ChekLocal()
        
        
        MapView.addAnnotation(od)
    }
    
   func SetupMeneger() -> Void {
          LocalMeneger.delegate = self
          // задал делегат
          LocalMeneger.desiredAccuracy = kCLLocationAccuracyBest
          // наивысшая точность нахождения
          
      }
    
    func ChekLocal() -> Void { // проверка на наличие геопозиции
        if CLLocationManager.locationServicesEnabled()
        {
            SetupMeneger()
            ChekAutoriz()
        }
        else
        {
            ChekAlert(title: "Функция геолокации отсутсвует", message: "Хотите включить?", url: URL(string:"App-Prefs:root=LOCAl_SERVICES" ))
            
        }
        
    }
    
    func ChekAutoriz() -> Void { // проверка разрешения на геопозицию
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways: //разрешено всегда
            MapView.showsUserLocation = true
            LocalMeneger.startUpdatingLocation()
            break
        case .authorizedWhenInUse : //разрешено при использовании приложения
            MapView.showsUserLocation = true
            LocalMeneger.startUpdatingLocation() //обновление геопозиции
            LocalMeneger.distanceFilter = 200 //дистанция в метрах нужного для возвращения на точку пользователя
            break
        case .denied : //запрет на использование геопозиции в моем приложении
            ChekAlert(title: "Вы запретили использование геопозиции", message: "Пожалуйста, вернитесь в Настройки и разрешите доступ, а так же перезайдите", url: URL(string: UIApplication.openSettingsURLString ))
            break
        case .restricted: // ограничен каким-либо образом на устройстве
            break
        case .notDetermined: //приложение еще не запросило разрешение на использование геопозиции
            LocalMeneger.requestWhenInUseAuthorization()
        default:
            break
        }
    }

    func ChekAlert(title:String, message:String?, url:URL?) -> Void {
        let alert = UIAlertController(title:title , message: message, preferredStyle:  .alert) // само оповещение
        
        let settings = UIAlertAction(title: "Настройки", style: .default) {(alert) in // первая кнопка и переход в настройки
            if let url = url
            {
                 UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        
        }
        let cansel = UIAlertAction(title: "Отмена", style: .cancel, handler: nil) // вторая кнопка и закрытие приложения
        alert.addAction(settings)
        alert.addAction(cansel)
        present(alert, animated: true, completion: nil)
    }
    
    
    let dvanono = Lavka(number:"200", coordinate: CLLocationCoordinate2D(latitude : 59.9188256, longitude:30.3109387))

    let oddede = Lavka(number:"199", coordinate: CLLocationCoordinate2D(latitude : 59.9188145, longitude:30.3108515))

    let oddevo = Lavka(number:"198", coordinate: CLLocationCoordinate2D(latitude : 59.9188152, longitude:30.3107864))

    let oddese = Lavka(number:"197", coordinate: CLLocationCoordinate2D(latitude : 59.9188145, longitude:30.3108515))

    let oddeshe = Lavka(number:"196", coordinate: CLLocationCoordinate2D(latitude : 59.9178046, longitude:30.3108743))

    let oddepya = Lavka(number:"195", coordinate: CLLocationCoordinate2D(latitude : 59.9177592, longitude:30.3108159))

    let oddeche = Lavka(number:"194", coordinate: CLLocationCoordinate2D(latitude : 59.9178410, longitude:30.3107680))

    let oddetri = Lavka(number:"193", coordinate: CLLocationCoordinate2D(latitude : 59.9177819, longitude:30.3107100))

    let oddedva = Lavka(number:"192", coordinate: CLLocationCoordinate2D(latitude : 59.9170782, longitude:30.3117862))

    let oddeod = Lavka(number:"191", coordinate: CLLocationCoordinate2D(latitude : 59.9177819, longitude:30.3107100))

    let oddeno = Lavka(number:"190", coordinate: CLLocationCoordinate2D(latitude : 59.9175158, longitude:30.3114882))

    let odvode = Lavka(number:"189", coordinate: CLLocationCoordinate2D(latitude : 59.9177819, longitude:30.3107100))

    let odvovo = Lavka(number:"188", coordinate: CLLocationCoordinate2D(latitude : 59.9175602, longitude:30.3115633))

    let odvose = Lavka(number:"187", coordinate: CLLocationCoordinate2D(latitude : 59.9176459, longitude:30.3115844))

    let odvoshe = Lavka(number:"186", coordinate: CLLocationCoordinate2D(latitude : 59.9176795, longitude:30.3114982))

    let odvopya = Lavka(number:"185", coordinate: CLLocationCoordinate2D(latitude : 59.9176662, longitude:30.3113866))

    let odvoche = Lavka(number:"184", coordinate: CLLocationCoordinate2D(latitude : 59.9176054, longitude:30.3113306))

    let odvotri = Lavka(number:"183", coordinate: CLLocationCoordinate2D(latitude : 59.9175441, longitude:30.3114188))

    let odvodva = Lavka(number:"182", coordinate: CLLocationCoordinate2D(latitude : 59.9175594, longitude:30.3115633))

    let odvood = Lavka(number:"181", coordinate: CLLocationCoordinate2D(latitude : 59.8909800, longitude:30.2786402))

    let odvono = Lavka(number:"180", coordinate: CLLocationCoordinate2D(latitude : 59.8910097, longitude:30.2748378))

    let odsede = Lavka(number:"179", coordinate: CLLocationCoordinate2D(latitude : 59.8910856, longitude:30.2751647))

    let odsevo = Lavka(number:"178", coordinate: CLLocationCoordinate2D(latitude : 59.8909430, longitude:30.2752378))

    let odsese = Lavka(number:"177", coordinate: CLLocationCoordinate2D(latitude : 59.8909083, longitude:30.2752026))

    let odseshe = Lavka(number:"176", coordinate: CLLocationCoordinate2D(latitude : 59.8914511, longitude:30.2753635))

    let odsepya = Lavka(number:"175", coordinate: CLLocationCoordinate2D(latitude : 59.8913597, longitude:30.2755982))

    let odseche = Lavka(number:"174", coordinate: CLLocationCoordinate2D(latitude : 59.8914544, longitude:30.2753571))

    let odsetri = Lavka(number:"173", coordinate: CLLocationCoordinate2D(latitude : 59.8914559, longitude:30.2758383))

    let odsedva = Lavka(number:"172", coordinate: CLLocationCoordinate2D(latitude : 59.8915981, longitude:30.2755482))

    let odseod = Lavka(number:"171", coordinate: CLLocationCoordinate2D(latitude : 59.8915158, longitude:30.2742330))

    let odseno = Lavka(number:"170", coordinate: CLLocationCoordinate2D(latitude : 59.8916853, longitude:30.2737968))

    let odshede = Lavka(number:"169", coordinate: CLLocationCoordinate2D(latitude : 59.8921591, longitude:30.2742155))

    let odshevo = Lavka(number:"168", coordinate: CLLocationCoordinate2D(latitude : 59.8932118, longitude:30.2753293))

    let odshese = Lavka(number:"167", coordinate: CLLocationCoordinate2D(latitude : 59.8932720, longitude:30.2756703))

    let odsheshe = Lavka(number:"166", coordinate: CLLocationCoordinate2D(latitude : 59.8932981, longitude:30.2758430))

    let odshepya = Lavka(number:"165", coordinate: CLLocationCoordinate2D(latitude : 59.8930870, longitude:30.2760549))

    let odsheche = Lavka(number:"164", coordinate: CLLocationCoordinate2D(latitude : 59.8929635, longitude:30.2759110))

    let odshetri = Lavka(number:"163", coordinate: CLLocationCoordinate2D(latitude : 59.8929190, longitude:30.2765249))

    let odshedva = Lavka(number:"162", coordinate: CLLocationCoordinate2D(latitude : 59.8930293, longitude:30.2764511))

    let odsheod = Lavka(number:"161", coordinate: CLLocationCoordinate2D(latitude : 59.8929175, longitude:30.2765229))

    let odsheno = Lavka(number:"160", coordinate: CLLocationCoordinate2D(latitude : 59.8927718, longitude:30.2766161))

    let odpyade = Lavka(number:"159", coordinate: CLLocationCoordinate2D(latitude : 59.8930966, longitude:30.2767898))

    let odpyavo = Lavka(number:"158", coordinate: CLLocationCoordinate2D(latitude : 59.8912191, longitude:30.2781825))

    let odpyase = Lavka(number:"157", coordinate: CLLocationCoordinate2D(latitude : 59.8911751, longitude:30.2783810))

    let odpyashe = Lavka(number:"156", coordinate: CLLocationCoordinate2D(latitude : 59.8912773, longitude:30.2784467))

    let odpyapya = Lavka(number:"155", coordinate: CLLocationCoordinate2D(latitude : 59.8913715, longitude:30.2780735))

    let odpyache = Lavka(number:"154", coordinate: CLLocationCoordinate2D(latitude : 59.8919999, longitude:30.2780927))

    let odpyatri = Lavka(number:"153", coordinate: CLLocationCoordinate2D(latitude : 59.8920557, longitude:30.2775022))

    let odpyadva = Lavka(number:"152", coordinate: CLLocationCoordinate2D(latitude : 59.8921566, longitude:30.2775944))

    let odpyaod = Lavka(number:"151", coordinate: CLLocationCoordinate2D(latitude : 59.8922064, longitude:30.2774080))

    let odpyano = Lavka(number:"150", coordinate: CLLocationCoordinate2D(latitude : 59.8928719, longitude:30.2782707))

    let odchede = Lavka(number:"149", coordinate: CLLocationCoordinate2D(latitude : 59.8926134, longitude:30.2782955))

    let odchevo = Lavka(number:"148", coordinate: CLLocationCoordinate2D(latitude : 59.8926400, longitude:30.2778372))

    let odchese = Lavka(number:"147", coordinate: CLLocationCoordinate2D(latitude : 59.8927658, longitude:30.2777691))

    let odcheshe = Lavka(number:"146", coordinate: CLLocationCoordinate2D(latitude : 59.8928756, longitude:30.2779435))

    let odchepya = Lavka(number:"145", coordinate: CLLocationCoordinate2D(latitude : 59.8928692, longitude:30.2782707))

    let odcheche = Lavka(number:"144", coordinate: CLLocationCoordinate2D(latitude : 59.8895322, longitude:30.2639081))

    let odchetri = Lavka(number:"143", coordinate: CLLocationCoordinate2D(latitude : 59.8896558, longitude:30.2612484))

    let odchedva = Lavka(number:"142", coordinate: CLLocationCoordinate2D(latitude : 60.052540, longitude:30.351102))

    let odcheod = Lavka(number:"141", coordinate: CLLocationCoordinate2D(latitude : 60.052446, longitude:30.350652))

    let odcheno = Lavka(number:"140", coordinate: CLLocationCoordinate2D(latitude : 60.052348, longitude:30.350822))

    let odtride = Lavka(number:"139", coordinate: CLLocationCoordinate2D(latitude : 60.052175, longitude:30.350619))

    let odtrivo = Lavka(number:"138", coordinate: CLLocationCoordinate2D(latitude : 60.052094, longitude:30.350509))

    let odtrise = Lavka(number:"137", coordinate: CLLocationCoordinate2D(latitude : 59.966846, longitude:30.258418))

    let odtrishe = Lavka(number:"136", coordinate: CLLocationCoordinate2D(latitude : 59.967031, longitude:30.257951))

    let odtripya = Lavka(number:"135", coordinate: CLLocationCoordinate2D(latitude : 59.966900, longitude:30.257674))

    let odtriche = Lavka(number:"134", coordinate: CLLocationCoordinate2D(latitude : 59.966900, longitude:30.257674))

    let odtritri = Lavka(number:"133", coordinate: CLLocationCoordinate2D(latitude : 59.930718, longitude:30.356645))

    let odtridva = Lavka(number:"132", coordinate: CLLocationCoordinate2D(latitude : 59.930727, longitude:30.356606))


    let odtriod = Lavka(number:"131", coordinate: CLLocationCoordinate2D(latitude : 59.930714, longitude:30.356742))
     
    let odtrino = Lavka(number:"130", coordinate: CLLocationCoordinate2D(latitude : 59.930825, longitude:30.356866))

    let oddvade = Lavka(number:"129", coordinate: CLLocationCoordinate2D(latitude : 59.930757, longitude:30.356824))

    let oddvavo = Lavka(number:"128", coordinate: CLLocationCoordinate2D(latitude : 59.901305, longitude:30.321482))

    let oddvase = Lavka(number:"127", coordinate: CLLocationCoordinate2D(latitude : 59.901305, longitude:30.321354))

    let oddvashe = Lavka(number:"126", coordinate: CLLocationCoordinate2D(latitude : 59.901175, longitude:30.321349))

    let oddvapya = Lavka(number:"125", coordinate: CLLocationCoordinate2D(latitude : 59.901175, longitude:30.321483))

    let oddvache = Lavka(number:"124", coordinate: CLLocationCoordinate2D(latitude : 59.901307, longitude:30.321482))

    let oddvatri = Lavka(number:"123", coordinate: CLLocationCoordinate2D(latitude : 59.904260, longitude:30.320115))

    let oddvadva = Lavka(number:"122", coordinate: CLLocationCoordinate2D(latitude : 59.904266, longitude:30.320199))

    let oddvaod = Lavka(number:"121", coordinate: CLLocationCoordinate2D(latitude : 59.904274, longitude:30.320273))

    let oddvano = Lavka(number:"120", coordinate: CLLocationCoordinate2D(latitude : 59.904230, longitude:30.320197))

    let ododde = Lavka(number:"119", coordinate: CLLocationCoordinate2D(latitude : 59.904224, longitude:30.320122))

    let ododvo = Lavka(number:"118", coordinate: CLLocationCoordinate2D(latitude : 59.904216, longitude:30.320048))

    let ododse = Lavka(number:"117", coordinate: CLLocationCoordinate2D(latitude : 59.904207, longitude:30.319974))

    let ododshe = Lavka(number:"116", coordinate: CLLocationCoordinate2D(latitude : 59.904275, longitude:30.319671))

    let ododpya = Lavka(number:"115", coordinate: CLLocationCoordinate2D(latitude : 59.904286, longitude:30.319605))

    let ododche = Lavka(number:"114", coordinate: CLLocationCoordinate2D(latitude : 59.904279, longitude:30.319541))

    let ododtri = Lavka(number:"113", coordinate: CLLocationCoordinate2D(latitude : 59.904248, longitude:30.319503))

    let ododdva = Lavka(number:"112", coordinate: CLLocationCoordinate2D(latitude : 59.904248, longitude:30.319503))

    let ododod = Lavka(number:"111", coordinate: CLLocationCoordinate2D(latitude : 59.904593, longitude:30.312933))

    let ododno = Lavka(number:"110", coordinate: CLLocationCoordinate2D(latitude : 59.904593, longitude:30.313234))

    let odnode = Lavka(number:"109", coordinate: CLLocationCoordinate2D(latitude : 59.904598, longitude:30.314238))

    let odnovo = Lavka(number:"108", coordinate: CLLocationCoordinate2D(latitude : 59.904599, longitude:30.313948))

    let odnose = Lavka(number:"107", coordinate: CLLocationCoordinate2D(latitude : 59.904478, longitude:30.314185))

    let odnoshe = Lavka(number:"106", coordinate: CLLocationCoordinate2D(latitude : 59.904469, longitude:30.313983))

    let odnopya = Lavka(number:"105", coordinate: CLLocationCoordinate2D(latitude : 59.904428, longitude:30.313237))

    let odnoche = Lavka(number:"104", coordinate: CLLocationCoordinate2D(latitude : 59.904428, longitude:30.313232))

    let odnotri = Lavka(number:"103", coordinate: CLLocationCoordinate2D(latitude : 59.904486, longitude:30.313154))

    let odnodva = Lavka(number:"102", coordinate: CLLocationCoordinate2D(latitude : 59.904486, longitude:30.313100))

    let odnood = Lavka(number:"101", coordinate: CLLocationCoordinate2D(latitude : 59.911968, longitude:30.319042))
    
    let odnono = Lavka(number:"100", coordinate: CLLocationCoordinate2D(latitude : 59.911956, longitude:30.318937 ))
     
    let dede = Lavka(number:"99", coordinate: CLLocationCoordinate2D(latitude : 59.911984, longitude:30.318841))
     
    let devo = Lavka(number:"98", coordinate: CLLocationCoordinate2D(latitude : 59.911956, longitude:30.318937 ))
     
    let dese = Lavka(number:"97", coordinate: CLLocationCoordinate2D(latitude : 59.912069, longitude:30.318882))
     
    let deshe = Lavka(number:"96", coordinate: CLLocationCoordinate2D(latitude : 59.912600, longitude:30.318772))
     
    let depya = Lavka(number:"95", coordinate: CLLocationCoordinate2D(latitude : 59.912598, longitude:30.318844 ))
     
    let deche = Lavka(number:"94", coordinate: CLLocationCoordinate2D(latitude : 59.912583, longitude:30.319148))
     
    let detri = Lavka(number:"93", coordinate: CLLocationCoordinate2D(latitude : 59.912579, longitude:30.319199))
     
    let dedva = Lavka(number:"92", coordinate: CLLocationCoordinate2D(latitude : 59.912575, longitude:30.319253))
     
    let deod = Lavka(number:"91", coordinate: CLLocationCoordinate2D(latitude : 59.912373, longitude:30.319273))
     
    let deno = Lavka(number:"90", coordinate: CLLocationCoordinate2D(latitude : 59.912374, longitude:30.319198))
     
    let vode = Lavka(number:"89", coordinate: CLLocationCoordinate2D(latitude : 59.912373, longitude:30.319128))
     
    let vovo = Lavka(number:"88", coordinate: CLLocationCoordinate2D(latitude : 59.912355, longitude:30.319054))
     
    let vose = Lavka(number:"87", coordinate: CLLocationCoordinate2D(latitude : 59.912350, longitude:30.318859))
     
    let voshe = Lavka(number:"86", coordinate: CLLocationCoordinate2D(latitude : 59.912348, longitude:30.318787))
     
    let vopya = Lavka(number:"85", coordinate: CLLocationCoordinate2D(latitude : 59.912952, longitude:30.318829))
     
    let voche = Lavka(number:"84", coordinate: CLLocationCoordinate2D(latitude : 59.912927, longitude:30.318832))
     
    let votri = Lavka(number:"83", coordinate: CLLocationCoordinate2D(latitude : 59.912901, longitude:30.318837))
     
    let vodva = Lavka(number:"82", coordinate: CLLocationCoordinate2D(latitude : 59.912876, longitude:30.318835))
     
    let vood = Lavka(number:"81", coordinate: CLLocationCoordinate2D(latitude : 59.915322, longitude:30.319797))
     
    let vono = Lavka(number:"80", coordinate: CLLocationCoordinate2D(latitude : 59.839090, longitude:30.247955))
     
    let sede = Lavka(number:"79", coordinate: CLLocationCoordinate2D(latitude : 59.838808, longitude:30.248482))
     
    let sevo = Lavka(number:"78", coordinate: CLLocationCoordinate2D(latitude : 59.838583, longitude:30.248893))
     
    let sese = Lavka(number:"77", coordinate: CLLocationCoordinate2D(latitude : 59.838219, longitude:30.249529))
     
    let seshe = Lavka(number:"76", coordinate: CLLocationCoordinate2D(latitude : 59.837466, longitude:30.248245))
     
    let sepya = Lavka(number:"75", coordinate: CLLocationCoordinate2D(latitude : 59.837769, longitude:30.248292))
     
    let seche = Lavka(number:"74", coordinate: CLLocationCoordinate2D(latitude : 59.838231, longitude:30.248051))
     
    let setri = Lavka(number:"73", coordinate: CLLocationCoordinate2D(latitude : 59.838428, longitude:30.247686))
     
     
    let sedva = Lavka(number:"72", coordinate: CLLocationCoordinate2D(latitude : 59.838710, longitude:30.247024))
     
    let seod = Lavka(number:"71", coordinate: CLLocationCoordinate2D(latitude : 59.838844, longitude:30.246629))
     
    let seno = Lavka(number:"70", coordinate: CLLocationCoordinate2D(latitude : 59.839026, longitude:30.245629))
     
    let shede = Lavka(number:"69", coordinate: CLLocationCoordinate2D(latitude : 59.839569, longitude:30.244816))
     
    let shevo = Lavka(number:"68", coordinate: CLLocationCoordinate2D(latitude : 59.841848, longitude:30.243700))
     
    let shese = Lavka(number:"67", coordinate: CLLocationCoordinate2D(latitude : 59.841673, longitude:30.243208))
     
    let sheshe = Lavka(number:"66", coordinate: CLLocationCoordinate2D(latitude : 59.841566, longitude:30.242904))

    let shepya = Lavka(number:"65", coordinate: CLLocationCoordinate2D(latitude : 59.841369, longitude:30.242342))
     
    let sheche = Lavka(number:"64", coordinate: CLLocationCoordinate2D(latitude : 59.840935, longitude:30.241115))
     
    let shetri = Lavka(number:"63", coordinate: CLLocationCoordinate2D(latitude : 59.841551, longitude:30.239813))
     
    let shedva = Lavka(number:"62", coordinate: CLLocationCoordinate2D(latitude : 59.841481, longitude:30.239713))
     
    let sheod = Lavka(number:"61", coordinate: CLLocationCoordinate2D(latitude : 59.842735, longitude:30.237903))
     
    let sheno = Lavka(number:"60", coordinate: CLLocationCoordinate2D(latitude : 59.844415, longitude:30.237771))
     
    let pyade = Lavka(number:"59", coordinate: CLLocationCoordinate2D(latitude : 59.844308, longitude:30.237927))
     
    let pyavo = Lavka(number:"58", coordinate: CLLocationCoordinate2D(latitude : 59.844358, longitude:30.238097))
     
    let pyase = Lavka(number:"57", coordinate: CLLocationCoordinate2D(latitude : 59.845170, longitude:30.240829))
     
    let pyashe = Lavka(number:"56", coordinate: CLLocationCoordinate2D(latitude : 59.845085, longitude:30.240990))
     
    let pyapya = Lavka(number:"55", coordinate: CLLocationCoordinate2D(latitude : 59.845083, longitude:30.240993))
     
    let pyache = Lavka(number:"54", coordinate: CLLocationCoordinate2D(latitude : 59.844986, longitude:30.241151))
     
    let pyatri = Lavka(number:"53", coordinate: CLLocationCoordinate2D(latitude : 59.844920, longitude:30.241300))
     
    let pyadva = Lavka(number:"52", coordinate: CLLocationCoordinate2D(latitude : 59.844823, longitude:30.241443))
     
    let pyaod = Lavka(number:"51", coordinate: CLLocationCoordinate2D(latitude : 59.844912, longitude:30.240113))
     
    let pyano = Lavka(number:"50", coordinate: CLLocationCoordinate2D(latitude : 59.844460, longitude:30.241809))
     
    let chede = Lavka(number:"49", coordinate: CLLocationCoordinate2D(latitude : 59.844371, longitude:30.241962))
     
    let chevo = Lavka(number:"48", coordinate: CLLocationCoordinate2D(latitude : 59.844278, longitude:30.242097))
     
    let chese = Lavka(number:"47", coordinate: CLLocationCoordinate2D(latitude : 59.844179, longitude:30.242266))
     
    let cheshe = Lavka(number:"46", coordinate: CLLocationCoordinate2D(latitude : 59.844087, longitude:30.242389))
     
    let chepya = Lavka(number:"45", coordinate: CLLocationCoordinate2D(latitude : 59.843846, longitude:30.242375))
     
    let cheche = Lavka(number:"44", coordinate: CLLocationCoordinate2D(latitude : 59.843755, longitude:30.242522))
     
    let chetri = Lavka(number:"43", coordinate: CLLocationCoordinate2D(latitude : 59.843649, longitude:30.242670))
     
    let chedva = Lavka(number:"42", coordinate: CLLocationCoordinate2D(latitude : 59.843553, longitude:30.242826))
     
    let cheod = Lavka(number:"41", coordinate: CLLocationCoordinate2D(latitude : 59.843452, longitude:30.242974))
     
    let cheno = Lavka(number:"40", coordinate: CLLocationCoordinate2D(latitude : 59.843363, longitude:30.243127))
     
    let tride = Lavka(number:"39", coordinate: CLLocationCoordinate2D(latitude : 59.843273, longitude:30.243315))
     
    let trivo = Lavka(number:"38", coordinate: CLLocationCoordinate2D(latitude : 59.844078, longitude:30.241268))
     
    let trise = Lavka(number:"37", coordinate: CLLocationCoordinate2D(latitude : 59.844091, longitude:30.241204))
     
    let trishe = Lavka(number:"36", coordinate: CLLocationCoordinate2D(latitude : 59.844117, longitude:30.241183))
     
    let tripya = Lavka(number:"35", coordinate: CLLocationCoordinate2D(latitude : 59.844157, longitude:30.241303))
     
    let triche = Lavka(number:"34", coordinate: CLLocationCoordinate2D(latitude : 59.843605, longitude:30.242033))
     
    let tritri = Lavka(number:"33", coordinate: CLLocationCoordinate2D(latitude : 59.843637, longitude:30.242144))
     
    let tridva = Lavka(number:"32", coordinate: CLLocationCoordinate2D(latitude : 59.843017, longitude:30.243096))
     
    let triod = Lavka(number:"31", coordinate: CLLocationCoordinate2D(latitude : 59.842879, longitude:30.243197))
     
    let trino = Lavka(number:"30", coordinate: CLLocationCoordinate2D(latitude : 59.842909, longitude:30.243265))
     
    let dvade = Lavka(number:"29", coordinate: CLLocationCoordinate2D(latitude : 59.842777, longitude:30.243472))
     
    let dvavo = Lavka(number:"28", coordinate: CLLocationCoordinate2D(latitude : 59.842750, longitude:30.243398))
     
    let dvase = Lavka(number:"27", coordinate: CLLocationCoordinate2D(latitude : 59.842589, longitude:30.243771))
     
    let dvashe = Lavka(number:"26", coordinate: CLLocationCoordinate2D(latitude : 59.842603, longitude:30.233215))
     
    let dvapya = Lavka(number:"25", coordinate: CLLocationCoordinate2D(latitude : 59.842644, longitude:30.233165))
     
    let dvache = Lavka(number:"24", coordinate: CLLocationCoordinate2D(latitude : 59.842610, longitude:30.233384))
     
    let dvatri = Lavka(number:"23", coordinate: CLLocationCoordinate2D(latitude : 59.842454, longitude:30.233691))
     
    let dvadva = Lavka(number:"22", coordinate: CLLocationCoordinate2D(latitude : 59.842433, longitude:30.233723))
     
    let dvaod = Lavka(number:"21", coordinate: CLLocationCoordinate2D(latitude : 59.842372, longitude:30.233674))
     
    let dvano = Lavka(number:"20", coordinate: CLLocationCoordinate2D(latitude : 59.842578, longitude:30.231461))
     
    let odde = Lavka(number:"19", coordinate: CLLocationCoordinate2D(latitude : 59.842475, longitude:30.231528))
     
    let odvo = Lavka(number:"18", coordinate: CLLocationCoordinate2D(latitude : 59.842124, longitude:30.230652))
     
    let odse = Lavka(number:"17", coordinate: CLLocationCoordinate2D(latitude : 59.841962, longitude:30.230124))
     
    let odshe = Lavka(number:"16", coordinate: CLLocationCoordinate2D(latitude : 59.841803, longitude:30.229655))
     
    let odpya = Lavka(number:"15", coordinate: CLLocationCoordinate2D(latitude : 59.841628, longitude:30.229115))
     
    let odche = Lavka(number:"14", coordinate: CLLocationCoordinate2D(latitude : 59.840718, longitude:30.228843))
     
    let odtri = Lavka(number:"13", coordinate: CLLocationCoordinate2D(latitude : 59.840828, longitude:30.229037))
     
    let oddva = Lavka(number:"12", coordinate: CLLocationCoordinate2D(latitude : 59.840908, longitude:30.228945))
     
    let odod = Lavka(number:"11", coordinate: CLLocationCoordinate2D(latitude : 59.840989, longitude:30.228844))
     
    let odno = Lavka(number:"10", coordinate: CLLocationCoordinate2D(latitude : 59.841064, longitude:30.228749))
     
     
    let de = Lavka(number:"9", coordinate: CLLocationCoordinate2D(latitude : 59.841036, longitude:30.228640))
     
    let vo = Lavka(number:"8", coordinate: CLLocationCoordinate2D(latitude : 59.840895, longitude:30.228661))
     
    let se = Lavka(number:"7", coordinate: CLLocationCoordinate2D(latitude : 59.840780, longitude:30.228681))
     
    let she = Lavka(number:"6", coordinate: CLLocationCoordinate2D(latitude : 59.838447, longitude:30.226136))
     
    let pya = Lavka(number:"5", coordinate: CLLocationCoordinate2D(latitude : 59.838427, longitude:30.226047 ))
     
    let che = Lavka(number:"4", coordinate: CLLocationCoordinate2D(latitude : 59.837897, longitude:30.224212))
     
    let tri = Lavka(number:"3", coordinate: CLLocationCoordinate2D(latitude : 59.837481, longitude:30.222799))
     
    let dva = Lavka(number:"2", coordinate: CLLocationCoordinate2D(latitude : 59.837462, longitude:30.222729))
     
    let od = Lavka(number:"1", coordinate: CLLocationCoordinate2D(latitude : 59.836654, longitude:30.219500))
}



extension ViewController:CLLocationManagerDelegate // задаем делегат для геопозиции
{
    
    
    
    
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last?.coordinate{
            let region = MKCoordinateRegion(center: location, latitudinalMeters: 5000, longitudinalMeters: 5000) // определение радиуса при нахождении человека или женщины
            MapView.setRegion(region, animated: true)
            
            
            }
        }
    public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        ChekAutoriz()
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        ChekAlert(title: "Произошла критическая ошибка", message: "Eror №1", url: nil)
    }
    
}

