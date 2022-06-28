//
//  NetworkManagerProtocol.swift
//  WeatherWonder
//
//  Created by Mac on 28.06.2022.
//

import Foundation


protocol NetworkManagerProtocol {
    
    func fetchCurrentWeather(city: String, completion: @escaping(WeatherModel) -> ())
    func fetchCUrrentLocationWeather(lat: String, lon: String, completion: @escaping(WeatherModel) ->())
    func fetchNextFiveWeatherForecast(city: String, completion: @escaping ([ForecastTemperature]) -> ())
    
    
}
