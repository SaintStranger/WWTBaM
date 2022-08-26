//
//  NewRequestModel.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import Foundation

class GameNewRequest: GameDictonaryDelegate{
  
    func eventNewRequest(data: Question) {
        Game.shared.dictQuestion = data

    }
}


