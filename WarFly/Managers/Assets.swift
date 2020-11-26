//
//  Assets.swift
//  WarFly
//
//  Created by Николаев Никита on 17.11.2020.
//  Copyright © 2020 Николаев Никита. All rights reserved.
//

import SpriteKit

class Assets {
    static let shared = Assets()
    var isLoaded = false
    let yellowShotAtlas = SKTextureAtlas(named: "YellowShot")
    let enemy_1Atlas = SKTextureAtlas(named: "Enemy_1")
    let enemy_2Atlas = SKTextureAtlas(named: "Enemy_2")
    let greenPowerUp = SKTextureAtlas(named: "GreenPowerUp")
    let bluePowerUp = SKTextureAtlas(named: "BluePowerUp")
    let playerPlaneAtlas = SKTextureAtlas(named: "PlayerPlane")
    
    func preloadAssets() {
        yellowShotAtlas.preload { print("yellowShotAtlas preloaded")}
        enemy_1Atlas.preload { print("enemy_1Atlas preloaded")}
        enemy_2Atlas.preload { print("enemy_2Atlas preloaded")}
        greenPowerUp.preload { print("greenPowerUp preloaded")}
        bluePowerUp.preload { print("bluePowerUp preloaded")}
        playerPlaneAtlas.preload { print("playerPlaneAtlas preloaded")}
    }
}
