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
var wordToDetailVC = ""

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        wordToDetailVC = data.words[indexPath.row]
        //print(wordToDetailVC)
        performSegue(withIdentifier: "toDetailVC", sender: wordToDetailVC)
//        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard let destinationVC = segue.destination as? DetailVC else { return }
//            destinationVC.word = wordToDetailVC
//        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? DetailVC else { return }
        destinationVC.word = wordToDetailVC
    }
    
    @IBAction func findWordBtn(_ sender: UIButton) {
    }

    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //guard let destinationVC = segue.destination as? DetailVC else { return }
        //как получить данные из cell?
        //destinationVC.word = translationLabel.text
    //}
    


}
