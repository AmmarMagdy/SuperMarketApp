//
//  superMarketItems.swift
//  SuperMarketApp
//
//  Created by Afnan on 6/22/19.
//  Copyright © 2019 ammar. All rights reserved.
//

import Foundation

class SuperMarketItems {
    var title:String
    var desc:String
    var image:String
    var price:Float
    
    init(title:String, desc:String, image:String, price:Float) {
        self.title = title
        self.desc = desc
        self.image = image
        self.price = price
    }
}

