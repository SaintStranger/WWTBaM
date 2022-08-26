//
//  GameRequestDelegate.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import Foundation
protocol GameRequestDelegate: AnyObject {
    
    func eventSaveDictRequest(dictRequest: Question)
}
