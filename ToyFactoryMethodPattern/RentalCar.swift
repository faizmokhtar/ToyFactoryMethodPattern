//
//  RentalCar.swift
//  ToyFactoryMethodPattern
//
//  Created by Faiz Mokhtar on 17/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import Foundation

class RentalCar {
  private var nameBV: String
  private var passengersBV: Int
  private var priceBV: Float

  init(name: String, passengers: Int, price: Float) {
    self.nameBV = name
    self.passengersBV = passengers
    self.priceBV = price
  }

  final var name: String {
    get { return self.nameBV }
  }

  final var passengers: Int {
    get { return self.passengersBV }
  }

  final var pricePerDay: Float {
    get { return self.priceBV }
  }

  class func createRentalCar(passengers: Int) -> RentalCar? {
    var carImpl: RentalCar.Type?
    switch passengers {
    case 2...3:
      carImpl = Compact.self
    case 4...8:
      carImpl = SUV.self
    default:
      carImpl = nil
    }
    return carImpl?.createRentalCar(passengers: passengers)
  }
}

class Compact: RentalCar {
  convenience init() {
    self.init(name: "VW Golf", passengers: 3, price: 20)
  }

  override init(name: String, passengers: Int, price: Float) {
    super.init(name: name, passengers: passengers, price: price)
  }

  override class func createRentalCar(passengers: Int) -> RentalCar? {
    if passengers < 2 {
      return Compact()
    } else {
      return SmallCompact()
    }
  }
}

class SmallCompact: Compact {
  init() {
    super.init(name: "Ford Fiesta", passengers: 3, price: 15)
  }
}

class SUV: RentalCar {
  init() {
    super.init(name: "Cadillac Escalade", passengers: 8, price: 75)
  }

  override class func createRentalCar(passengers: Int) -> RentalCar? {
    return SUV()
  }
}
