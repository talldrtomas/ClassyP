//
//  ArItems.swift
//  ClassyP
//
//  Created by Tomas Galvan-Huerta on 12/31/18.
//  Copyright © 2018 Somat. All rights reserved.
//

import Foundation

class Spots: NSObject {
    let laditude: Double
    let longitude:Double
    let altitude: Double
    let image: String
    let label: String
    
    init(laditude: Double, longitude: Double, altitude: Double, image: String, name: String) {
        self.laditude = laditude
        self.longitude = longitude
        self.altitude = altitude
        self.image  = image
        self.label = name
    }
    
}
