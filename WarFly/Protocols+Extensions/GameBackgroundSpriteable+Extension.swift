//
//  GameBackgroundSpriteable+Extension.swift
//  WarFly
//
//  Created by Николаев Никита on 13.11.2020.
//  Copyright © 2020 Николаев Никита. All rights reserved.
//

import SpriteKit
import GameKit

protocol GameBackgroundSpriteable {
    static func populate(at point: CGPoint?) -> Self
    static func randomPoint() -> CGPoint
}

extension GameBackgroundSpriteable {
    static func randomPoint() -> CGPoint {
        let screen = UIScreen.main.bounds
        let distribution = GKRandomDistribution(lowestValue: Int(screen.size.height+400), highestValue: Int(screen.size.height+500))
        let y: CGFloat = CGFloat(distribution.nextInt())
        let x: CGFloat = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: Int(screen.size.width)))
        
        return CGPoint(x: x, y: y)
    }
}
