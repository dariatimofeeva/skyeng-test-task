//
//  ViewController.swift
//  skyeng-test-task
//
//  Created by Дарья Тимофеева on 03.03.2022.
//

import UIKit

//struct WordData {
//    var meaning: [String : Any] = ["id" : "string",
//                    "wordID" : 0,
//                   "text" : "string"]
//    var images = ["url" : "string"]
//    var definition = ["deffinition" : "string"]
//    var words = ["first", "second", "third", "fourth"]
//}

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var wordSearchTF: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell {
            cell.translationLabel.text = viewModel.words[indexPath.row].text
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let wordToDetailVC = viewModel.words[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC {
            vc.word = wordToDetailVC.text
            vc.meaningsFromMainVC = wordToDetailVC.meanings
            present(vc, animated: true)
        }
    }

    @IBAction func findWordBtn(_ sender: UIButton) {
        viewModel.getWords(by: wordSearchTF.text ?? "")
    }

}

extension MainVC: MainViewModelDelegate {
    func reloadData() {
        tableView.reloadData()
    }
}
