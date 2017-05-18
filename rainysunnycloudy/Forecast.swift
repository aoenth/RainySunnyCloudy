//
//  Forecast.swift
//  rainysunnycloudy
//
//  Created by Kevin on 2017-05-17.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    func downloadForecastData(completed: @escaping DownloadComplete) {
        //Downloading forecast weather data for TableView
        Alamofire.request(FORECAST_URL).responseJSON {
            response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let list = dict["list"] as? Array<Dictionary<String, AnyObject>> {
                    
                    
                    if let dt = list[0]["dt"] as? Int {
                        self._date = "\(dt)"
                    }
                    
                    if let weather = list[0]["weather"] as? Array<Dictionary<String, AnyObject>> {
                        if let main = weather[0]["main"] as? String {
                            self._weatherType = main
                        }
                    }
                    
                    if let temp = list[0]["temp"] as? Dictionary<String, AnyObject> {
                        if let max = temp["max"] as? Double {
                            self._highTemp = "\(max - 273.15)"
                        }
                        
                        if let min = temp["min"] as? Double {
                            self._lowTemp = "\(min - 273.15)"
                        }
                    }
                    
                }

                
                
            }
        }
    }
}
