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
    return RentalCar.createRentalCar(passengers: passengers)?.name
  }
}
