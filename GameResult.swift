//
//  Protocols.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import Foundation

protocol GameResultDelegate: AnyObject {
    func eventEndGame(result: Int)
}
