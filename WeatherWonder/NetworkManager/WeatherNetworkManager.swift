//
//  WeatherNetworkManager.swift
//  WeatherWonder
//
//  Created by Mac on 28.06.2022.
//

import Foundation


class WeatherNetworkManager: NetworkManagerProtocol {
    
    struct Weather: Codable {
        let id: Int
        let main: String
        let descriptin: String
        let icon: String
    }
    
    struct Main: Codable {
        let temp: Float
        let feels_like: Float
        let temp_min: Float
        let temp_max: Float
        let pressure: Float
        let humudity: Float
    }
    
    struct Sys: Codable {
        let country: String?
        let sunrise: Int?
        let sunset: Int?
    }
    
    struct WeatherModel: Codable {
        let weather: [Weather]
        let main: Main
        let sys: Sys
        let name: String?
        let dt: Int
        let timezone: Int?
        let dt_txt: String?
    }
}
