//
//  GameSettings.swift
//  WarFly
//
//  Created by Николаев Никита on 25.11.2020.
//  Copyright © 2020 Николаев Никита. All rights reserved.
//

import UIKit

class GameSettings: NSObject {
    
    let ud = UserDefaults.standard
    
    var isMusic = true
    var isSound = true
    
    let musicKey = "music"
    let soundKey = "sound"
    
    var highscore: [Int] = []
    var currentScore = 0
    let highscoreKey = "highscore"
    
    override init() {
        super.init()
        loadGameSettings()
        loadScores()
    }
    
    func saveScores() {
        if !highscore.contains(currentScore){
            highscore.append(currentScore)
            highscore = Array(highscore.sorted { $0 > $1 }.prefix(3))
            ud.set(highscore, forKey: highscoreKey)
            ud.synchronize()
        }
    }
    
    func loadScores() {
        guard ud.value(forKey: highscoreKey) != nil else { return }
        highscore = ud.array(forKey: highscoreKey) as! [Int]
    }
    
    func saveGameSettings() {
        ud.set(isMusic, forKey: musicKey)
        ud.set(isSound, forKey: soundKey)
    }
    
    func loadGameSettings() {
        guard ud.value(forKey: musicKey) != nil && ud.value(forKey: soundKey) != nil else { return }
        isMusic = ud.bool(forKey: musicKey)
        isSound = ud.bool(forKey: soundKey)
    }

}
