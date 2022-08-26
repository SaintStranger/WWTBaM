//
//  AddQuestionViewController.swift
//  WWTBaM
//
//  Created by Anthony Chechevichkin on 19.08.2022.
//

import UIKit

class AddQuestionViewController: UIViewController, AlertDelegate,SendDictRequestDelegate {
    
    var countCell: Int = 1
    var delegate: GameSaveDictonaryDelegate?
    var newQuestion = Game.shared.dictQuestion!
    @IBOutlet weak var tableView: UITableView!
    @IBAction func addCell(_ sender: Any) {
        
        if countCell < 2 {
            countCell += 1
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = GameSaveDictonary()
        tableView.register(UINib(nibName: "AddRequestCell", bundle: nil), forCellReuseIdentifier:  AddRequestCell.reuseId)
    }
    
    @IBAction func addQuestion(_ sender: Any) {
        //        print("eeeee\(Game.shared.dictQuestion)")
        self.delegate?.eventSaveNewRequest()
    }
    
    func alerter() {
        let alert = UIAlertController(title: "Информация", message: "Новый вопрос сохранен, но не добавлен в игру", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
     //   UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
        
        let keyWindow = UIApplication.shared.connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .map({$0 as? UIWindowScene})
        .compactMap({$0})
        .first?.windows
        .filter({$0.isKeyWindow}).first
        
        keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    func sendDict() -> Question {
        if Game.shared.dictQuestion != nil {
            self.newQuestion = Game.shared.dictQuestion!
        }
        return self.newQuestion
    }
}

extension AddQuestionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countCell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddRequestCell", for: indexPath) as! AddRequestCell
        return cell
    }
}
