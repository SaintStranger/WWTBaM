//
//  GameSettings.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 19.08.2022.
//

import Foundation

class GameSettings {
    var status : Bool = false
}

extension GameSettings: GameSettingsDelegate {
    func eventChangeSettings(statusRandom: Bool) {
        Game.shared.randomQuestion?.status = statusRandom
        Game.shared.addRandomState()
    }
}




