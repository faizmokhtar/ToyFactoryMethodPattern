//
//  main.swift
//  ToyFactoryMethodPattern
//
//  Created by Faiz Mokhtar on 17/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import Foundation

let passengers = [1, 3, 5]

for p in passengers {
  print("\(p) passengers: \(String(describing: CarSelector.selectCar(passengers: p)))")
}
