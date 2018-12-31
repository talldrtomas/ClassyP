//
//  MapAnnotation.swift
//  ClassyP
//
//  Created by Tomas Galvan-Huerta on 12/31/18.
//  Copyright © 2018 Somat. All rights reserved.
//

import MapKit


class MapAnnotation: NSObject, MKAnnotation {
    //1
    let coordinate: CLLocationCoordinate2D
    let title: String?
    //2
    let item: Spots
    //3
    init(location: CLLocationCoordinate2D, item: Spots) {
        self.coordinate = location
        self.item = item
        self.title = item.label
        
        super.init()
    }
}
