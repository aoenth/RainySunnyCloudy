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

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)43.7\(LONGTITUDE)-79.42\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?id=524901&appid=b339b61f4a1fca24852a60a24130b5a1"
