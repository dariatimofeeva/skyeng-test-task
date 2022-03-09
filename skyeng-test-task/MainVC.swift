//
//  ViewController.swift
//  skyeng-test-task
//
//  Created by Дарья Тимофеева on 03.03.2022.
//

import UIKit

struct WordData {
    var meaning: [String : Any] = ["id" : "string",
                    "wordID" : 0,
                   "text" : "string"]
    var images = ["url" : "string"]
    var definition = ["deffinition" : "string"]
    var words = ["first", "second", "third", "fourth"]
}

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var wordSearchTF: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let data = WordData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell {
            cell.translationLabel.text = data.words[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    
    @IBAction func findWordBtn(_ sender: UIButton) {
    }
    
}

