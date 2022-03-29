//
//  tableViewCellTableViewCell.swift
//  skyeng-test-task
//
//  Created by Дарья Тимофеева on 04.03.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var translationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
