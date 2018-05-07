//
//  Conversions.swift
//  Conversion Calculator Final
//
//  Created by Olivia Bishop on 5/7/18.
//  Copyright © 2018 Olivia Bishop. All rights reserved.
//

import Foundation

struct Conversions {
    var labels = ["Fahrenheit to Celcius", "Celcius to Fahrenheit", "Miles to Kilometers", "Kilometers to Miles"]
    var inputUnit = ["°F", "°C", "mi", "km"]
    var outputUnit = ["°C", "°F", "km", "mi"]
}


func kilometeresToMiles(kilometers: Double) -> String{
    let miles = (kilometers) / 1.60934
    return String(format: "%.2f", miles) + Conversions.init().outputUnit[3]
}

func fahrenheitToCelcius(farenheit: Double) -> String {
    let celcius = ((farenheit) - 32) * (5/9)
    return String(format: "%.2f", celcius) + Conversions.init().outputUnit[0]
}

func celciusToFahrenheit(celcius: Double) -> String {
    let fahrenheit = (celcius * (9/5)) + 32
    return String(format: "%.2f", fahrenheit) + Conversions.init().outputUnit[1]
}

func milesToKilometers(miles: Double) -> String{
    let kilometers = miles * 1.60934
    return String(format: "%.2f", kilometers) + Conversions.init().outputUnit[2]
}
