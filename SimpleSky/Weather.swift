//
//  Weather.swift
//  SimpleSky
//
//  Created by David Wang on 12/28/16.
//  Copyright © 2016 David Wang. All rights reserved.
//

import Foundation

struct Weather {
    
    let summary: String
    let city: String
    
    //here we put all the returned weather data into nice neat variables
    
    /*let longitude: Double
    let latitude: Double
    //let timezone: String
    
    let dateAndTime: NSDate
    
    //this is specific weather data
    
    let icon: String
    let precipProbability: Double
    let precipType: String
    let temperature: Double
    let apparentTemperature: Double
    let humidity: Double
    let windSpeed: Double
    let windBearing: Double*/
    
    
    //specific daily data
    /*let sunriseTime:NSDate
    let sunsetTime: NSDate
    let temperatureMin: Double
    let temperatureMinTime: NSDate
    let temperatureMax: Double
    let temperatureMaxTime: NSDate
    let apparentTemperatureMin: Double
    let apparentTemperatureMinTime: NSDate
    let apparentTemperatureMax: Double
    let apparentTemperatureMaxTime: NSDate*/
    
    /*let alertTitle: String
    let alertTime: NSDate
    let alertExpire: NSDate
    let alertDescription: String*/

    
    init(weatherData: [String: AnyObject]) {
        
        print("got into initialization")
        
        let weatherDictCurrently = weatherData["currently"]
        
        summary = weatherDictCurrently?["summary"] as! String
        
        city = weatherData["timezone"] as! String
        
        
        /*
        
        longitude = weatherData["longitude"] as! Double
        latitude = weatherData["latitude"] as! Double
        
        
        
        dateAndTime = NSDate(timeIntervalSince1970: weatherDictCurrently["time"] as! TimeInterval)
        
        
        icon = weatherDictCurrently["summary"] as! String
        precipProbability = weatherDictCurrently["summary"] as! Double
        precipType = weatherDictCurrently["summary"] as! String
        temperature = weatherDictCurrently["summary"] as! Double
        apparentTemperature = weatherDictCurrently["summary"] as! Double
        humidity = weatherDictCurrently["summary"] as! Double
        windSpeed = weatherDictCurrently["summary"] as! Double
        windBearing = weatherDictCurrently["summary"] as! Double*/
        
        /*let weatherDictMinutely = weatherData["minutely"]![0] as! [String: AnyObject]
        
        dateAndTime = NSDate(timeIntervalSince1970: weatherDictMinutely["time"] as! TimeInterval)
        
        summary = weatherDictMinutely["summary"] as! String
        icon = weatherDictMinutely["summary"] as! String
        precipProbability = weatherDictMinutely["summary"] as! Double
        precipType = weatherDictMinutely["summary"] as! String
        temperature = weatherDictMinutely["summary"] as! Double
        apparentTemperature = weatherDictMinutely["summary"] as! Double
        humidity = weatherDictMinutely["summary"] as! Double
        windSpeed = weatherDictMinutely["summary"] as! Double
        windBearing = weatherDictMinutely["summary"] as! Double
        
        let weatherDictHourly = weatherData["hourly"]![0] as! [String: AnyObject]
        
        dateAndTime = NSDate(timeIntervalSince1970: weatherDictHourly["time"] as! TimeInterval)

        summary = weatherDictHourly["summary"] as! String
        icon = weatherDictHourly["summary"] as! String
        precipProbability = weatherDictHourly["summary"] as! Double
        precipType = weatherDictHourly["summary"] as! String
        temperature = weatherDictHourly["summary"] as! Double
        apparentTemperature = weatherDictHourly["summary"] as! Double
        humidity = weatherDictHourly["summary"] as! Double
        windSpeed = weatherDictHourly["summary"] as! Double
        windBearing = weatherDictHourly["summary"] as! Double
        
        let weatherDictDaily = weatherData["daily"]![0] as! [String: AnyObject]
        
        dateAndTime = NSDate(timeIntervalSince1970: weatherDictDaily["time"] as! TimeInterval)

        summary = weatherDictHourly["summary"] as! String
        icon = weatherDictHourly["summary"] as! String*/
    }
    
    //add the weather get function within the weather class
    
    /*private let darkSkyBaseURL = "https://api.darksky.net/forecast"
    private let darkSkyAPIKey = ProcessInfo.processInfo.environment["DARKSKY_API"]!
    
    func getWeather(coordinates: String) {
        print("started function")
        
        // This is a pretty simple networking task, so the shared session will do.
        let session = URLSession.shared
        
        let weatherRequestURL = URL(string: "\(darkSkyBaseURL)/\(darkSkyAPIKey)/\(coordinates)")!
        
        // The data task retrieves the data.
        let dataTask = session.dataTask(with: weatherRequestURL) {
            (data, response, error) -> Void in
            if let error = error {
                // Case 1: Error
                // We got some kind of error while trying to get data from the server.
                print("Error:\n\(error)")
            }
            else {
                // Case 2: Success
                // We got a response from the server!
                do {
                    // Try to convert that data into a Swift dictionary
                    let weather = try JSONSerialization.jsonObject(
                        with: data!,
                        options: .mutableContainers) as! [String: AnyObject]
                    print("in do try catch")
                    //print("City: \(weather["timezone"]!)")
                }
                catch let jsonError as NSError {
                    // An error occurred while trying to convert the data into a Swift dictionary.
                    print("JSON error description: \(jsonError.description)")
                }
            }
        }
        
        // The data task is set up...launch it!
        dataTask.resume()
    }*/

}
