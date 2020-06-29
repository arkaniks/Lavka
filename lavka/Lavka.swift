//
//  Lavka.swift
//  lavka
//
//  Created by Владислав on 20.06.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import Foundation
import MapKit

class Lavka:NSObject, MKAnnotation
{
    let number:String?
    let coordinate: CLLocationCoordinate2D
    
    
    init(
        number:String? ,
        coordinate: CLLocationCoordinate2D) {
        self.number = number
        self.coordinate = coordinate
        
        
        super .init()
    }
    var subtitle: String? {
        return number
    }
    
    var title: String? {
        return nil
    }
    
    var ColorLavka:UIColor
    {
        switch number {
        case "99999":
            return .black
        default:
            return .yellow
        }
    }
    
    var img: UIImage{
        switch number {
        case "99999":
            return #imageLiteral(resourceName: "settings")
        default:
            return #imageLiteral(resourceName: "lavka")
        }
    }
    
}

