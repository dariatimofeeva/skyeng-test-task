//
//  DetailVC.swift
//  skyeng-test-task
//
//  Created by Дарья Тимофеева on 09.03.2022.
//

import UIKit

class DetailVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var detailTableView: UITableView!
    @IBOutlet weak var transcriptionLabel: UILabel!
    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    var word: String?
    var transcription: String?
    var meaningsFromMainVC: [Meaning] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = word
        
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meaningsFromMainVC.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as? DetailTableViewCell {
            cell.translationLabel.text = meaningsFromMainVC[indexPath.row].translation.text
            cell.uiImageView.image = meaningsFromMainVC[indexPath.row].getImageFrom()
            transcriptionLabel.text = "[\(meaningsFromMainVC[indexPath.row].transcription ?? "transcription")]"
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("you tapped on cell")
        let img = meaningsFromMainVC[indexPath.row].getFullImageFrom()
        var fullImageViewController = ImageViewController()
        fullImageViewController.insertAnImage(image: img)
        fullImageViewController.modalPresentationStyle = .fullScreen
        present(fullImageViewController, animated: true)
    }
//TODO: открытие картинки только по нажатию на миниатюру
}
