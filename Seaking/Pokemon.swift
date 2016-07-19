//
//  Pokemon.swift
//  Seaking
//
//  Created by Casey Barth on 7/18/16.
//  Copyright © 2016 Casey Barth. All rights reserved.
//

import Foundation
import UIKit

class Pokemon: NSObject {
  let name: NSString?
  let id: NSInteger?
  let expirationTime: NSInteger?
  
  init(name: NSString, id: NSInteger, expirationTime: NSInteger) {
    self.name = name
    self.id = id
    self.expirationTime = expirationTime
  }
}

extension Pokemon {
  func mapPokemonToImage() -> UIImage? {
    let mappedPokemonImage = UIImage(named: String(id))
    return mappedPokemonImage
  }
}