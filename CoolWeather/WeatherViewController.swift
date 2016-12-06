//
//  WeatherViewController.swift
//  CoolWeather
//
//  Created by Mark Rabins on 12/5/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController
{
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather: CurrentWeather!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        currentWeather = CurrentWeather()
        currentWeather.downloadWeatherDetails {
            self.updateMainUI()
        }
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateMainUI() {
//        dateLabel.text = currentWeather.date
//        print("I am the \(currentWeather.date)")
//        temperatureLabel.text = "\(currentWeather.currentTemp)"
//        print("Current temp is \(currentWeather.currentTemp)")
//        currentWeatherTypeLabel.text = currentWeather.weatherType
//        print("I am the current weather \(currentWeather.weatherType)")
//        locationLabel.text = currentWeather.cityName
//        print("I am the current location \(currentWeather.cityName)")
//        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
//        print("I am the current title of \(currentWeather.weatherType)")
        
        dateLabel.text = currentWeather.date
        
        print("I am currentWeather.date \(currentWeather.date)")
        
        temperatureLabel.text = "\(currentWeather.currentTemp)"
        
        print("mememe \(currentWeather.currentTemp)")
        currentWeatherTypeLabel.text = currentWeather.weatherType
        print("I am the type \(currentWeather.weatherType) ")
        locationLabel.text = currentWeather.cityName
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
    }


}

// Extension for Delegates and DataSources
extension WeatherViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        return cell

    }
    
    
    
    
}
