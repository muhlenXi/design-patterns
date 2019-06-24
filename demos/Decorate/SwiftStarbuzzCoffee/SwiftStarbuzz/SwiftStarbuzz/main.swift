//
//  main.swift
//  SwiftStarbuzz
//
//  Created by muhlenXi on 2019/6/18.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

var beverage = Espresso()
beverage.size = .tall
print(beverage.getDescription() + String(format:" $%.2f",beverage.cost()))

var beverage1: Beverage = DarkRoast()
beverage1.size = .grande
beverage1 = Mocha(beverage: beverage1)
beverage1 = Mocha(beverage: beverage1)
beverage1 = Whip(beverage: beverage1)
print(beverage1.getDescription() + String(format:" $%.2f",beverage1.cost()))

var beverage2: Beverage = HouseBlend()
beverage2.size = .venti
beverage2 = Soy(beverage: beverage2)
beverage2 = Mocha(beverage: beverage2)
beverage2 = Whip(beverage: beverage2)
print(beverage2.getDescription() + String(format:" $%.2f",beverage2.cost()))


