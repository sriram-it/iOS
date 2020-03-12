//
//  CarTableViewCell.swift
//  CarList
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 Sriram Elangovan. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var manfCompany: UILabel!
    @IBOutlet weak var mileage: UILabel!
    @IBOutlet weak var Price: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    
}
