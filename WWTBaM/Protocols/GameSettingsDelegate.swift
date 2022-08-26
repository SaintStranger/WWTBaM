//
//  GameSettingsDelegate.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import Foundation

protocol GameSettingsDelegate: AnyObject {
    
    func eventChangeSettings(statusRandom: Bool)
}
