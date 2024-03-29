//
//  ViewController.swift
//  SimpleSky
//
//  Created by David Wang on 12/28/16.
//  Copyright © 2016 David Wang. All rights reserved.
//

import UIKit

class CurrentViewController: UIViewController, WeatherGetterDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var currentBackground: UIImageView!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherSummary: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var rainLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var sunriseLabel: UILabel!
    @IBOutlet weak var sunsetLabel: UILabel!
    
    var weather: WeatherGetter!
    
    
    
    
    @IBAction func getWeatherButton(_ sender: Any) {
        weather.getWeather(coordinates: "40.781693,-73.966590")
        
        
        
        //UserDefaults.standard.set(weather, forKey: "weather")
        
        //let secondTab = self.tabBarController?.viewControllers?[1] as! HourlyViewController
        
        //secondTab.cityLabel.text = "New York"*/
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.currentBackground.image = UIImage(named: "background")
        
        weather = WeatherGetter(delegate: self)

        let secondTab = self.tabBarController?.viewControllers?[1] as! HourlyViewController
        
        secondTab.weather = weather
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: WeatherGetterDelegate methods
    // -----------------------------------
        
    func didGetWeather(weather: Weather) {
        
        
        
        
        DispatchQueue.main.async {
            /*self.cityLabel.text = weather.city
            self.weatherLabel.text = weather.weatherDescription
            self.temperatureLabel.text = "\(Int(round(weather.tempCelsius)))°"
            self.cloudCoverLabel.text = "\(weather.cloudCover)%"
            self.windLabel.text = "\(weather.windSpeed) m/s"
            
            if let rain = weather.rainfallInLast3Hours {
                self.rainLabel.text = "\(rain) mm"
            }
            else {
                self.rainLabel.text = "None"
            }
            
            self.humidityLabel.text = "\(weather.humidity)%"*/
            self.weatherSummary.text = weather.summary
            self.cityLabel.text = weather.city
            print(weather.summary)
        }

        
        
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
        DispatchQueue.main.async {
            self.showSimpleAlert(title: "Can't get the weather",
                                 message: "The weather service isn't responding.")
        }
        print("didNotGetWeather error: \(error)")
    }
    
    // Pressing the clear button on the text field (the x-in-a-circle button
    // on the right side of the field)
    /*func textFieldShouldClear(_ textField: UITextField) -> Bool {
        // Even though pressing the clear button clears the text field,
        // this line is necessary. I'll explain in a later blog post.
        textField.text = ""
        
        getCityWeatherButton.isEnabled = false
        return true
    }*/
        
        
        // MARK: - UITextFieldDelegate and related methods
        // -----------------------------------------------
        
        // Enable the "Get weather for the city above" button
        // if the city text field contains any text,
        // disable it otherwise.
    /*func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        let prospectiveText = (currentText as NSString).replacingCharacters(
            in: range,
            with: string)
        //getCityWeatherButton.enabled = prospectiveText.characters.count > 0
        print("Count: \(prospectiveText.characters.count)")
        return true
    }
        
        // Pressing the clear button on the text field (the x-in-a-circle button

        
    // Pressing the return button on the keyboard should be like
    // pressing the "Get weather for the city above" button.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        //getWeatherForCityButtonTapped(getCityWeatherButton)
        return true
    }
        
    // Tapping on the view should dismiss the keyboard.
    /*override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }*/
        
        
    // MARK: - Utility methods
    // -----------------------
        */
    
    func showSimpleAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style:  .default,
            handler: nil
        )
        alert.addAction(okAction)
        present(
            alert,
            animated: true,
            completion: nil
        )
    }
        
}
    
    
/*extension String {
        
        // A handy method for %-encoding strings containing spaces and other
        // characters that need to be converted for use in URLs.
    var urlEncoded: String {
        return self.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLUserAllowedCharacterSet())!
    }
        
}*/



