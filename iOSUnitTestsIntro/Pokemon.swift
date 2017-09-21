//
//  Pokemon.swift
//  iOSUnitTestsIntro
//
//  Created by Theodore Bendixson on 7/17/16.
//  Copyright © 2016 X-Team. All rights reserved.
//

import Foundation

class Pokemon {
  
  var type: PokemonType
  var attackType: PokemonAttackType
  var health:Int = 100
  
  init(type: PokemonType, attackType: PokemonAttackType) {
    self.type = type
    self.attackType = attackType
  }
  
  func attack(enemy: Pokemon) {
    
    var damage = 30
    
    if enemy.type == .fire && attackType == .water{
      damage = 60
    }
    
    if enemy.type == .water && attackType == .fire{
      damage = 10
    }
    
    enemy.health = enemy.health - damage
  }
}

enum PokemonType{
  case neutral
  case fire
  case water
}

enum PokemonAttackType{
  case normal
  case fire
  case water
}
