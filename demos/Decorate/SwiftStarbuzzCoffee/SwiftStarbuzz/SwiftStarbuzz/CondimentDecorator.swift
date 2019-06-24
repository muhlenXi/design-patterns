//
//  CondimentDecorator.swift
//  SwiftStarbuzz
//
//  Created by muhlenXi on 2019/6/18.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

/// 调料类
public class CondimentDecorator: Beverage {
    var beverage: Beverage
    
    init(beverage: Beverage) {
        self.beverage = beverage
        super.init()
    }
}

/// 摩卡
public class Mocha: CondimentDecorator {
    public override func getDescription() -> String {
        return beverage.getDescription() + ", Mocha"
    }
    
    public override func cost() -> Double {
        return 0.20 + beverage.cost()
    }
}

/// 豆浆
public class Soy: CondimentDecorator {
    public override func getDescription() -> String {
        return beverage.getDescription() + ", Soy"
    }
    
    public override func cost() -> Double {
        return 0.15 + beverage.cost()
    }
}

/// 奶泡
public class Whip: CondimentDecorator {
    public override func getDescription() -> String {
        return beverage.getDescription() + ", Whip"
    }
    
    public override func cost() -> Double {
        return 0.10 + beverage.cost()
    }
}
