//
//  generalNoticeTableViewCell.swift
//  kc-mbaas-Scoops-vohcan
//
//  Created by Nacho Villaverde Montalvo on 26/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit

class generalNoticeTableViewCell: UITableViewCell {

    @IBOutlet weak var generalNoticeImageViewer: UIImageView!
    @IBOutlet weak var generalTituloLabel: UILabel!
    @IBOutlet weak var generalAutorLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
