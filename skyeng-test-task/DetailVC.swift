//
//  DetailVC.swift
//  skyeng-test-task
//
//  Created by Дарья Тимофеева on 09.03.2022.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var translationLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    @IBOutlet weak var image: UIImageView!
   
    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    var word: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = word
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
