//
//  RentalCar.swift
//  ToyFactoryMethodPattern
//
//  Created by Faiz Mokhtar on 17/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import Foundation

func createRentalCar(passengers: Int) -> RentalCar? {
  var car: RentalCar?
  switch passengers {
  case 0...1:
    car = Sports()
  case 2...3:
    car = Compact()
  case 4...8:
    car = SUV()
  case 9...14:
    car = Minivan()
  default:
    car = nil
  }
  return car
}

protocol RentalCar {
  var name: String { get }
  var passengers: Int { get }
  var pricePerDay: Float { get }
}

class Compact: RentalCar {
  var name: String = "VW Golf"
  var passengers: Int = 3
  var pricePerDay: Float = 20
}

class Sports: RentalCar {
  var name: String = "Porsche Boxter"
  var passengers: Int = 1
  var pricePerDay: Float = 100
}

class SUV: RentalCar {
  var name: String = "Cadillac Escalade"
  var passengers: Int = 8
  var pricePerDay: Float = 75
}

class Minivan: RentalCar {
  var name: String = "Chocolat Express"
  var passengers: Int = 14
  var pricePerDay: Float = 40
}
