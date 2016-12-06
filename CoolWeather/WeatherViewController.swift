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
    @IBOutlet weak var tempertureLabel: UILabel!
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
//            self.updateMainUI()
        }
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateMainUI() {
        dateLabel.text = currentWeather.date
        print("I am the \(dateLabel.text)")
        
        tempertureLabel.text = "\(currentWeather.currentTemp)"
        print("\(currentWeather.currentTemp)")
        currentWeatherTypeLabel.text = currentWeather.weatherType
        print("\(currentWeather.weatherType)")
        locationLabel.text = currentWeather.cityName
        print("\(currentWeather.cityName)")

        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
        print("\(currentWeather.weatherType)")

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
