//
//  Constants.swift
//  rainysunnycloudy
//
//  Created by Kevin on 2017-05-16.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGTITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "b339b61f4a1fca24852a60a24130b5a1"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=b339b61f4a1fca24852a60a24130b5a1"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=b339b61f4a1fca24852a60a24130b5a1"
