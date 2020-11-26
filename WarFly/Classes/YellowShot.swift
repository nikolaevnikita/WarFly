//
//  YellowShot.swift
//  WarFly
//
//  Created by Николаев Никита on 17.11.2020.
//  Copyright © 2020 Николаев Никита. All rights reserved.
//

import SpriteKit

class YellowShot: Shot {
    init() {
        let textureAtlas = Assets.shared.yellowShotAtlas
        super.init(textureAtlas: textureAtlas)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
