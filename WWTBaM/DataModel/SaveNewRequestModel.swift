//
//  SaveNewRequestModel.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import Foundation

class GameSaveDictonary: GameSaveDictonaryDelegate {

    func eventSaveNewRequest() {
        Game.shared.saveNewDictonary()
    }   
}

