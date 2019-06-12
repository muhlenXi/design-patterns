//
//  main.swift
//  WeatherData
//
//  Created by muhlenXi on 2019/6/12.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

print("Hello, World!")

let weatherData = WeatherData()

let currentDisplay = CurrentConditionsDisplay(weatherData: weatherData)

weatherData.setupMeasuments(temperature: 80, humidity: 60, pressure: 30.4)
weatherData.setupMeasuments(temperature: 82, humidity: 70, pressure: 29.2)

weatherData.removeObserver(observer: currentDisplay)

weatherData.setupMeasuments(temperature: 78, humidity: 90, pressure: 29.2)

