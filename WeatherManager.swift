//
//  WeatherManager.swift
//  Clima
//
//  Created by James Frazee on 2/13/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=11b41ef88690740d119d90de7d1cf82a&units=imperial"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
    }
    
    func performAPIRequest(urlString: String){
        //1. Create a URL
       if let url = URL(string: urlString){
            //2. Create a URLSession
            let session = URLSession(configuration: .default)
        
        //3. Give the session a task
            
        let task = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!)
                return
            }
            if let safeData = data {
                self.parseJSON(weatherData: safeData)
            }
        }
        
            //4. Start the task
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data){
        
    }
}