//
//  PokemonTests.swift
//  iOSUnitTestsIntro
//
//  Created by Theodore Bendixson on 7/17/16.
//  Copyright © 2016 X-Team. All rights reserved.
//

import XCTest
@testable import iOSUnitTestsIntro

class PokemonTests: XCTestCase {
  
  var squirtle: Pokemon!
  var charmander: Pokemon!
  var psyduck: Pokemon!
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    squirtle = Pokemon(type: .Water, attackType: .Water)
    charmander = Pokemon(type: .Fire, attackType: .Fire)
    psyduck = Pokemon(type: .Water, attackType: .Water)
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
    squirtle = nil
    charmander = nil
    psyduck = nil
  }
  
  func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {
    
    //1. Have Squirtle Attack Charmander
    squirtle.attack(enemy: charmander)
    
    //Ouch!
    
    //2. Now Have Squirtle Attack Psyduck
    squirtle.attack(enemy: psyduck)
    
    //Oooh. That had to hurt.
    
    //Who took more damage? Charmander or Psyduck?
    
    //If a Water Pokemon Does More Damage To A Fire Pokemon,
    //We would expect Charmander to have less health than Psyduck.
    
    //3. Test it
    XCTAssertTrue(charmander.health < psyduck.health)
  }
}
