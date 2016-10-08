//
//  ControlTVCell.swift
//  Controles
//
//  Created by Humberto Solano on 08/10/16.
//  Copyright © 2016 moonsmileh. All rights reserved.
//

import UIKit

class ControlTVCell: UITableViewCell {
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblSubtitle:UILabel!
    @IBOutlet weak var ivIcon:UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
