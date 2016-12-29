//
//  ViewController.swift
//  SimpleSky
//
//  Created by David Wang on 12/28/16.
//  Copyright © 2016 David Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, WeatherGetterDelegate, UITextFieldDelegate {
    
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherSummary: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var rainLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    
    var weather: WeatherGetter!
    
    
    @IBAction func getWeatherButton(_ sender: Any) {
        //weather.getWeather(coordinates: "40.781693,-73.966590")
        
        //weatherSummary.text = weather.summary
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        weather = WeatherGetter(delegate: self)

        weather.getWeather(coordinates: "40.781693,-73.966590")
        
        
        //weather.getWeather(coordinates: "40.781693,-73.966590")

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
        
    // MARK: -
        
    // MARK: WeatherGetterDelegate methods
    // -----------------------------------
        
    func didGetWeather(weather: Weather) {
        
        print("didgetweather delegate method invoked")
        
        self.weatherSummary.text = weather.summary
        
        // This method is called asynchronously, which means it won't execute in the main queue.
        // ALl UI code needs to execute in the main queue, which is why we're wrapping the code
        // that updates all the labels in a dispatch_async() call.
        
        
        
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
        // on the right side of the field)
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        textField.text = ""
            
        //getCityWeatherButton.enabled = false
        return true
    }
        
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
    }*/
        
}
    
    
/*extension String {
        
        // A handy method for %-encoding strings containing spaces and other
        // characters that need to be converted for use in URLs.
    var urlEncoded: String {
        return self.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLUserAllowedCharacterSet())!
    }
        
}*/



