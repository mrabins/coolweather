//
//  Location.swift
//  CoolWeather
//
//  Created by Mark Rabins on 12/6/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var  sharedInstance = Location()
    private init() {  }
    
    var latitude: Double!
    var longitude: Double!
    
}
