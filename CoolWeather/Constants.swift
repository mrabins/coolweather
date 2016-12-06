//
//  Constants.swift
//  CoolWeather
//
//  Created by Mark Rabins on 12/5/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation

    let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
    let LATITUDE = "lat="
    let LONGITUDE = "&lon="
    let APP_ID = "&appid="
    let API_KEY = "40feade10642dec6f43a08ae2806d4ea"
    
    let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"

    typealias DownloadComplete = () -> ()



