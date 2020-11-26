//
//  GreenPowerUp.swift
//  WarFly
//
//  Created by Николаев Никита on 16.11.2020.
//  Copyright © 2020 Николаев Никита. All rights reserved.
//

import SpriteKit

class GreenPowerUp: PowerUp {
    init() {
        let textureAtlas = Assets.shared.greenPowerUp
        super.init(textureAtlas: textureAtlas)
        name = "greenPowerUp"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
