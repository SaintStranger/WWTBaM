//
//  GameStrategy.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import Foundation
import UIKit

protocol Strategy {
    func getNumberQuestion(numberOfQuestion: Int) -> Int
}
