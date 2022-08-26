//
//  ResultCell.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 17.08.2022.
//

import UIKit

class ResultCell: UITableViewCell {

    static let reuseId = "ResultCell"

    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var procent: UILabel!

    override func prepareForReuse() {
        super.prepareForReuse()
        score.text = ""
        date.text = ""
        procent.text = ""
    }
 
}


