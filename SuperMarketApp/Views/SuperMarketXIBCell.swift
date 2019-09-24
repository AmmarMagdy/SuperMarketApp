//
//  SuperMarketXIBCell.swift
//  SuperMarketApp
//
//  Created by Afnan on 6/22/19.
//  Copyright © 2019 ammar. All rights reserved.
//

import UIKit

class SuperMarketXIBCell: UITableViewCell {

    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemDesc: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(item: SuperMarketItems) {
        itemTitle.text = item.title
        itemDesc.text = item.desc
        itemPrice.text = "\(item.price)"
        itemImage.image = UIImage(named: item.image)
    }
    
}
