//
//  SettingsViewController.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 19.08.2022.
//


import UIKit

class SettingsViewController: UIViewController {
    var switchState: Bool = false
    var delegate : GameSettingsDelegate?
    @IBOutlet weak var switchControl: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = GameSettings()
        self.switchControl.isOn = Game.shared.statusRandomQuestion
       
    }
  
    @IBAction func swithChange(_ sender: UISwitch) {
        DispatchQueue.main.async {[weak self] in
            self?.delegate?.eventChangeSettings(statusRandom: sender.isOn)
        }
    }
 
}
