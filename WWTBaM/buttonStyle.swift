//
//  buttonStyle.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import UIKit

final class buttonStyle: UIButton {

        override func draw(_ rect: CGRect) {
            super.draw(rect)
            
            layer.cornerRadius = 10
            layer.masksToBounds = true
        }
}
