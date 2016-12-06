//
//  WeatherCell.swift
//  CoolWeather
//
//  Created by Mark Rabins on 12/6/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!

    
    func configureCell(forecast: Forecast) {
        weatherIcon.image = UIImage(named: forecast.weeatherType)
        dayLabel.text = forecast.date
        weatherType.text = forecast.weeatherType
        highTempLabel.text = "\(forecast.highTemp)"
        lowTempLabel.text = "\(forecast.lowTemp)"

    }

}
