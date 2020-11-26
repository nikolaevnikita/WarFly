//
//  Island.swift
//  WarFly
//
//  Created by Николаев Никита on 12.11.2020.
//  Copyright © 2020 Николаев Никита. All rights reserved.
//

import SpriteKit
import GameplayKit

final class Island: SKSpriteNode, GameBackgroundSpriteable {
    
    static func populate(at point: CGPoint?) -> Island {
        let islandImageName = configureIslandName()
        let island = Island(imageNamed: islandImageName)
        island.setScale(randomScaleFactor)
        island.position = point ?? randomPoint()
        island.zPosition = 1
        island.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        island.name = "sprite"
        island.run(rotateForRandowAngle())
        island.run(move(from: island.position))
        
        return island
    }
    
    fileprivate static func configureIslandName() -> String {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 4)
        let randowNumber = distribution.nextInt()
        let imageName = "is" + "\(randowNumber)"
        
        return imageName
    }
    
    fileprivate static var randomScaleFactor: CGFloat {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 10)
        let randomNumber = CGFloat(distribution.nextInt())/10
        
        return randomNumber
    }
    
    fileprivate static func rotateForRandowAngle() -> SKAction {
        let distribution = GKRandomDistribution(lowestValue: 0, highestValue: 360)
        let randomNumber = CGFloat(distribution.nextInt())
        
        return SKAction.rotate(toAngle: randomNumber * CGFloat(Double.pi/180), duration: 0)
    }
    
    fileprivate static func move(from point: CGPoint) -> SKAction {
        let movePoint = CGPoint(x: point.x, y: -200)
        let moveDistance = point.y + 200
        let movementSpeed: CGFloat = 100.0
        let duration = moveDistance/movementSpeed
        return SKAction.move(to: movePoint, duration: TimeInterval(duration))
    }
}
