//
//  ViewController.swift
//  skyeng-test-task
//
//  Created by Дарья Тимофеева on 03.03.2022.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var wordSearchTF: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    struct WordData {
        var meaning: [String : Any] = ["id" : "string",
                        "wordID" : 0,
                       "text" : "string"]
        var images = ["url" : "string"]
        var definition = ["deffinition" : "string"]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
    @IBAction func findWordBtn(_ sender: UIButton) {
    }
    
}

