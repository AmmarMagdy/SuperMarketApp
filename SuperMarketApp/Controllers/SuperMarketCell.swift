//
//  SuperMarketCell.swift
//  SuperMarketApp
//
//  Created by Afnan on 6/22/19.
//  Copyright © 2019 ammar. All rights reserved.
//

import UIKit

class SuperMarketCell: UITableViewCell {


    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemDesc: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup (item:SuperMarketItems) {
        itemTitle.text = item.title
        itemDesc.text = item.desc
        itemImage.image = UIImage(named: item.image)
        itemPrice.text = "\(item.price)"
    }

}
