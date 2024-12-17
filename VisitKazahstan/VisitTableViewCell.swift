//
//  VisitTableViewCell.swift
//  VisitKazahstan
//
//  Created by Абай Бауржан on 16.12.2024.
//

import UIKit
import SDWebImage

class VisitTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var flagImageView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        pictureImageView.layer.cornerRadius = 16
        flagImageView.layer.cornerRadius = 65
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setDate(visit: VisitKazahstan) {
        nameLabel.text = visit.name
        regionLabel.text = visit.region
        locationLabel.text = visit.location
        
        pictureImageView.sd_setImage(with: URL(string: visit.picture))
        flagImageView.sd_setImage(with: URL(string: visit.flag))

    }
}
