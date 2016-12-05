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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// Extension for Delegates and DataSources

extension WeatherViewController: UITabBarDelegate, UITableViewDataSource {
    
}
