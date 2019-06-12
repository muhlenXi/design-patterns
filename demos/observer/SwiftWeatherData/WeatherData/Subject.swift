//
//  Subject.swift
//  WeatherData
//
//  Created by muhlenXi on 2019/6/12.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

/// 观察者协议
protocol Observer{
    func update()
    var uid: String {get}
}

/// 主题协议
protocol Subject {
    func registerObserver(observer: Observer)
    func removeObserver(observer: Observer)
    func notifyObservers()
}

// MARK: - Weather datacl

/// 天气数据类
class WeatherData {
    private var observers = [Observer]()
    
    private(set) var temperature: Float = 0.0
    private(set) var humidity: Float = 0.0
    private(set) var pressure: Float = 0.0
    
    func measurementsChanged() {
        notifyObservers()
    }
    
    func setupMeasuments(temperature: Float, humidity: Float, pressure: Float) {
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        measurementsChanged()
    }
}

extension WeatherData: Subject {
    func registerObserver(observer: Observer) {
        observers.append(observer)
    }
    
    func removeObserver(observer: Observer) {
        var index: Int?
        for (i, element) in observers.enumerated() {
            if element.uid == observer.uid {
                index = i
                break
            }
        }
        if let index = index {
            observers.remove(at: index)
        }
    }
    
    func notifyObservers() {
        for element in observers {
            element.update()
        }
    }
}


// MARK: - Display
protocol DisplayElement {
    func display()
}


/// 天气展板1
class CurrentConditionsDisplay {
    private var weatherData: WeatherData
    private var uuid: String
    
    private var humidity: Float = 0.0
    private var temperature: Float = 0.0
    
    init(weatherData: WeatherData) {
        self.weatherData = weatherData
        self.uuid = UUID().uuidString
        weatherData.registerObserver(observer: self)
    }
}

extension CurrentConditionsDisplay: Observer {
    var uid: String {
        return uuid
    }
    
    func update() {
        self.temperature = weatherData.temperature
        self.humidity = weatherData.humidity
        display()
    }
}

extension CurrentConditionsDisplay: DisplayElement {
    func display() {
        print("Current Conditions: \(temperature) F dgrees and \(humidity)% humidity.")
    }
}

/// 天气展板2


