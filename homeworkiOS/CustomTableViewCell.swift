//
//  CustomTableViewCell.swift
//  homeworkiOS
//
//  Created by Hy Horng on 9/10/20.
//  Copyright © 2020 Hy Horng. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customImageViewCell: UIImageView!
    
    @IBOutlet weak var customTitleLabel: UILabel!
    
    @IBOutlet weak var customTextLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
