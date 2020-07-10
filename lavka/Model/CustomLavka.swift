//
//  CustomLavka.swift
//  lavka
//
//  Created by Владислав on 20.06.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import Foundation
import MapKit

public class LavkaMarkers: MKMarkerAnnotationView {
    public override var annotation: MKAnnotation?{
        willSet{
            guard let places = newValue as? Lavka else{
                return
            }
            canShowCallout = false // не показывает сноску под маркером
            calloutOffset = CGPoint(x: -5, y: 5) // размещение сноски под маркером
            rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            
            markerTintColor = places.ColorLavka
            glyphImage = places.img
        }
    }
    
}
