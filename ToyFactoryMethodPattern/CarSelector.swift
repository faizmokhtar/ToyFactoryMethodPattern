//
//  CarSelector.swift
//  ToyFactoryMethodPattern
//
//  Created by Faiz Mokhtar on 17/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import Foundation

class CarSelector {
  class func selectCar(passengers: Int) -> String? {
    var car: RentalCar?

    switch passengers {
    case 0...1:
      car = Sports()
    case 2...3:
      car = Compact()
    case 4...8:
      car = SUV()
    default:
      car = nil
    }

    return car?.name
  }
}
