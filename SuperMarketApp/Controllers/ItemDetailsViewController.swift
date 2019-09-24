//
//  ItemDetailsViewController.swift
//  SuperMarketApp
//
//  Created by Afnan on 6/23/19.
//  Copyright © 2019 ammar. All rights reserved.
//

import UIKit

class ItemDetailsViewController: UIViewController {

    @IBOutlet weak var itemDesc: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    
    var item : SuperMarketItems?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    itemTitle.text = item?.title
    itemDesc.text = item?.desc
    itemImage.image = UIImage(named: item?.image ?? "")
        
        title = item?.title
        
    }
}
