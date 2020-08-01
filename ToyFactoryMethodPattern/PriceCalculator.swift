//
//  PriceCalculator.swift
//  ToyFactoryMethodPattern
//
//  Created by Faiz Mokhtar on 18/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import Foundation

class PriceCalculator {
  class func calculatePrice(passengers:Int, days:Int) -> Float? {
    let car = RentalCar.createRentalCar(passengers: passengers)
    return car == nil ? nil : car!.pricePerDay * Float(days)
  }
}
