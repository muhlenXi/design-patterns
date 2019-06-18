//
//  Beverage.swift
//  SwiftStarbuzz
//
//  Created by muhlenXi on 2019/6/18.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

public enum BeverageSize {
    case tall
    case grande
    case venti
}

/// 饮料类
public class Beverage {
    var description = "Beverage"
    var size = BeverageSize.tall
    
    public func cost() -> Double {
        return 0.0
    }
    
    public func getDescription() -> String {
        return description
    }
}

/// 浓缩咖啡类
public class Espresso: Beverage {
    override init() {
        super.init()
        self.description = "Espresso Coffee"
    }
    
    public override func cost() -> Double {
        var cost = 1.99
        switch size {
        case .tall:
            cost += 0.10
        case .grande:
            cost += 0.15
        case .venti:
            cost += 0.20
        }
        return cost
    }
}

/// 深培咖啡
public class DarkRoast: Beverage {
    override init() {
        super.init()
        self.description = "Dark Roast Coffee"
    }
    
    public override func cost() -> Double {
        var cost = 0.99
        switch size {
        case .tall:
            cost += 0.10
        case .grande:
            cost += 0.15
        case .venti:
            cost += 0.20
        }
        return cost
    }
}

/// 家常咖啡
public class HouseBlend: Beverage {
    override init() {
        super.init()
        self.description = "House Blend Coffee"
    }
    
    public override func cost() -> Double {
        var cost = 0.89
        switch size {
        case .tall:
            cost += 0.10
        case .grande:
            cost += 0.15
        case .venti:
            cost += 0.20
        }
        return cost
    }
}


