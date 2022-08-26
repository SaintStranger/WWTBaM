//
//  ResultModel.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import Foundation

struct ResultOfGame: Codable {
    var dateGame: String
    var score: Int
    var procent: Double
    var countRequest: Int
}
