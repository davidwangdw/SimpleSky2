//
//  HourlyViewController.swift
//  SimpleSky
//
//  Created by David Wang on 12/29/16.
//  Copyright © 2016 David Wang. All rights reserved.
//

import UIKit

class HourlyViewController: UIViewController, WeatherGetterDelegate {
    
    @IBOutlet weak var cityLabel: UILabel!
    
    var weather: WeatherGetter!

    //let weatherObject = UserDefaults.standard.object(forKey: "weather") as? Weather
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        print(weather)
        
    }
    
    func didGetWeather(weather: Weather) {
        
        self.cityLabel.text = weather.city
        
        
        
        //DispatchQueue.main.asynchronously() {
        //self.cityLabel.text = weather.city
        /*self.weatherLabel.text = weather.weatherDescription
         self.temperatureLabel.text = "\(Int(round(weather.tempCelsius)))°"
         self.cloudCoverLabel.text = "\(weather.cloudCover)%"
         self.windLabel.text = "\(weather.windSpeed) m/s"
         
         if let rain = weather.rainfallInLast3Hours {
         self.rainLabel.text = "\(rain) mm"
         } else {
         self.rainLabel.text = "None"
         }
         
         self.humidityLabel.text = "\(weather.humidity)%"*/
        //}
    }
    
    func didNotGetWeather(error: NSError) {
        // This method is called asynchronously, which means it won't execute in the main queue.
        // ALl UI code needs to execute in the main queue, which is why we're wrapping the call
        // to showSimpleAlert(title:message:) in a dispatch_async() call.
        //DispatchQueue.main.asynchronously() {
        /*self.showSimpleAlert(title: "Can't get the weather",
         message: "The weather service isn't responding.")*/
        //}
        print("didNotGetWeather error: \(error)")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
