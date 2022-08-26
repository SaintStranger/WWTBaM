//
//  StepToStep.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import Foundation
import UIKit

class GameStepToStep: Strategy {
    func getNumberQuestion(numberOfQuestion: Int) -> Int {
        return numberOfQuestion + 1
    }
}


