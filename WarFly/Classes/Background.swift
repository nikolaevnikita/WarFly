//
//  Background.swift
//  WarFly
//
//  Created by Николаев Никита on 12.11.2020.
//  Copyright © 2020 Николаев Никита. All rights reserved.
//

import SpriteKit

class Background: SKSpriteNode {
    
    static func populateBackground(at point: CGPoint) -> Background {
        let background = Background(imageNamed: "background")
        background.position = point
        background.zPosition = 0
        
        return background
    }
}
