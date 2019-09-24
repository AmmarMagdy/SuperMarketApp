//
//  ViewController.swift
//  SuperMarketApp
//
//  Created by Afnan on 6/16/19.
//  Copyright © 2019 ammar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var superMarketLabel: UILabel!
    @IBOutlet weak var superMarketTable: UITableView!
    
    var superMarketItems = [SuperMarketItems]()
    
    var sectionsItems = ["fast Food", "fruits"]
    var fastFoodItems = ["KFC","Koshary","Fries"]
    var fruitsFoodItems = ["Banana","Mango","WaterMelon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        superMarketTable.tableFooterView = UIView()
        
        superMarketItems.append(SuperMarketItems(title:"KFC", desc: "I love KFC", image: "KFC", price: 50.30))
        superMarketItems.append(SuperMarketItems(title:"Koshary", desc: "Koshary is hot", image: "Koshary", price: 15.0))
        superMarketItems.append(SuperMarketItems(title:"Fries", desc: "Fries is good", image: "Fries", price: 5.0))
        superMarketItems.append(SuperMarketItems(title:"Banana", desc: "I love Banana", image: "Banana", price: 50.30))
        superMarketItems.append(SuperMarketItems(title:"Mango", desc: "I love Mango", image: "Mango", price: 20.25))
        superMarketItems.append(SuperMarketItems(title:"KFC", desc: "watermelon is cold", image: "WaterMelon", price: 40.30))
//        superMarketTable.dataSource = self
//        superMarketTable.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsItems.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return (section == 0) ? fastFoodItems.count : fruitsFoodItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "superMarketCell", for: indexPath)
        cell.textLabel?.text = indexPath.section == 0 ? fastFoodItems[indexPath.row] : fruitsFoodItems[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionsItems[section]
    }

}

