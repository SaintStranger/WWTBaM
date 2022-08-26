//
//  GameDictonaryDelegate.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import Foundation
protocol GameDictonaryDelegate: AnyObject {
    func eventNewRequest(data: Question)
}
