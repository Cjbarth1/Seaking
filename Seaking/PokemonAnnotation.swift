//
//  PokemonAnnotation.swift
//  Seaking
//
//  Created by Casey Barth on 7/18/16.
//  Copyright © 2016 Casey Barth. All rights reserved.
//

import Foundation
import MapKit


class PokemonAnnotation: MKPointAnnotation {
  let pokemon: Pokemon?
  let startTime: NSDate?
  let cp: NSInteger?
  
  init(pokemon: Pokemon, startTime: NSDate, cp: NSInteger) {
    self.pokemon = pokemon
    self.startTime = startTime
    self.cp = cp
  }
}

extension PokemonAnnotation {
  func getEndTime() -> NSDate? {
    guard let startingPoint = startTime else { return nil }
    let calendar = NSCalendar.currentCalendar()
    guard let expirationTime = pokemon?.expirationTime else { return nil }
    let end = calendar.dateByAddingUnit(.Minute, value: expirationTime, toDate: startingPoint, options: [])
    return end
  }
}