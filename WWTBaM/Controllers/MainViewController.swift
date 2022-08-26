//
//  MainViewController.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import UIKit

final class MainViewController: UIViewController {

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goGame":
            Game.shared.countTrueResponce = GameSession()
        case "goSettings":
            Game.shared.randomQuestion = GameSettings()
        default:
            break
        }
    }
    
}
