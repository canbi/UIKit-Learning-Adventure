//
//  TodoTableViewCell.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
