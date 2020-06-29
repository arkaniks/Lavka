//
//  MapViewController.swift
//  lavka
//
//  Created by Владислав on 20.06.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController,  CLLocationManagerDelegate {

    @IBOutlet weak var MapView: MKMapView!
    
    let LocalMeneger = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocacion = CLLocation(latitude: 59.939095, longitude: 30.315868) //начальная точка при загрузке приложения
        MapView.CentralLocation(location: initialLocacion)
        
        let region = MKCoordinateRegion(center: initialLocacion.coordinate, latitudinalMeters: 20000, longitudinalMeters: 20000) // ограничение макс. возможного отдаления
        MapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
        
        let zoomRage = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 70000) // Максимум ограниченный зум
        MapView.setCameraZoomRange(zoomRage, animated: true)
        
    }
    
   override func viewDidAppear(_ animated: Bool){
       super.viewDidAppear(animated)
       ChekLocal()
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
                ChekAlert(title: "Отсутсвует геолокация", message: "Хотите включить?", url: URL(string:"App-Prefs:root=LOCAl_SERVICES" ))
                
            }
            
        }
        
        func ChekAutoriz() -> Void { // проверка разрешения на геопозицию
            switch CLLocationManager.authorizationStatus() {
            case .authorizedAlways: //разрешено всегда
                break
            case .authorizedWhenInUse : //разрешено при использовании приложения
                MapView.showsUserLocation = true
                LocalMeneger.startUpdatingLocation() //обновление геопозиции
                break
            case .denied : //запрет на использование геопозиции в моем приложении
                ChekAlert(title: "Вы запретили использование геопозиции", message: "Пожалуйста, вернитесь в Настройки и разрешите доступ", url: URL(string: UIApplication.openSettingsURLString ))
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
        
        
    }


    extension MKMapView
    {
        func CentralLocation( location: CLLocation, regionRadius: CLLocationDistance = 2000) -> Void //определения  стартового экрана радиуса видимости
        {
            let CordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
            setRegion(CordinateRegion, animated: true)
            
        }
    }
    extension MKMapView:CLLocationManagerDelegate // задаем делегат для геопозиции
    {
        
        
        public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            if let location = locations.last?.coordinate{
                let region = MKCoordinateRegion(center: location, latitudinalMeters: 3000, longitudinalMeters: 3000) // определение радиуса при нахождении человека или женщины
                    setRegion(region, animated: true)
                }
            }
        public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
          ChekAutoriz()
        }
        
        
        }


    
    
    
    
    

