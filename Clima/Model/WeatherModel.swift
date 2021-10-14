//
//  WeatherModel.swift
//  Clima
//
//  Created by Anton Belorukavsky on 31.05.2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let weatherCondition: String
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch weatherCondition {
        case "Thunderstorm":
            return "cloud.bolt"
        case "Drizzle":
            return "cloud.drizzle"
        case "Rain":
            return "cloud.rain"
        case "Snow":
            return "cloud.snow"
        case "Mist", "Smoke", "Haze", "Dust", "Fog", "Sand", "Ash", "Squall", "Tornado":
            return "cloud.fog"
        case "Clear":
            return "sun.max"
        case "Clouds":
            return "cloud"
        default:
            return "cloud"
        }
    }
    
}
