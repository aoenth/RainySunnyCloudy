//
//  WeatherCell.swift
//  rainysunnycloudy
//
//  Created by Kevin on 2017-05-18.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    @IBOutlet weak var weatherIcon: UIImageView!

    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!

    func configureCell(forecast: Forecast) {
        lowTemp.text = "\(Int(Double(forecast.lowTemp)!))°C"
        highTemp.text = "\(Int(Double(forecast.highTemp)!))°C"
        weatherType.text = forecast.weatherType
        dayLbl.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }


}
