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
        SetupLavka()
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
    
    func SetupLavka() -> Void {
        
        MapView.addAnnotation(Lavka.od)
    }
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

