//
//  detailTableViewCell.swift
//  skyeng-test-task
//
//  Created by Дарья Тимофеева on 14.03.2022.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var translationLabel: UILabel!
    @IBOutlet weak var uiImageView: UIImageView!
    @IBOutlet weak var transcriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        uiImageView.layer.cornerRadius = 5
        uiImageView.layer.borderColor = UIColor.lightGray.cgColor
        uiImageView.layer.borderWidth = 0.5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
