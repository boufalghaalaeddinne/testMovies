//
//  MoviesTableViewCell.swift
//  IOS Movies
//
//  Created by boufalgha alaeddine on 16/5/2022.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var _img: UIImageView!
    @IBOutlet weak var _lab_title: UILabel!
    @IBOutlet weak var _lab_s_title: UILabel!
    @IBOutlet weak var _lab_date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
