//
//  SecondViewController.swift
//  SuperMarketApp
//
//  Created by Afnan on 6/22/19.
//  Copyright © 2019 ammar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var superMarketTable: UITableView!
    
     var superMarketItems = [SuperMarketItems]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        superMarketItems.append(SuperMarketItems(title:"KFC", desc: "I love KFC", image: "KFC", price: 50.30))
        superMarketItems.append(SuperMarketItems(title:"Koshary", desc: "Koshary is hot", image: "Koshary", price: 15.0))
        superMarketItems.append(SuperMarketItems(title:"Fries", desc: "Fries is good" , image: "Fries", price: 5.0))
        superMarketItems.append(SuperMarketItems(title:"Banana", desc: "I love Banana", image: "Banana", price: 50.30))
        superMarketItems.append(SuperMarketItems(title:"Mango", desc: "I love Mango", image: "Mango", price: 20.25))
        superMarketItems.append(SuperMarketItems(title:"WaterMelon", desc: "watermelon is cold", image: "WaterMelon", price: 40.30))
        title = "Super Market Items"
        setupTableView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        title = "Super Market Items"
        
    }
    
    func setupTableView () {
        let nib = UINib(nibName: "SuperMarketXIBCell", bundle: nil)
        superMarketTable.register(nib, forCellReuseIdentifier: "superMarketXIBCell")
    }
    
}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superMarketItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "superMarketXIBCell", for: indexPath) as! SuperMarketXIBCell
//        cell.itemTitle.text = superMarketItems[indexPath.row].title
//        cell.itemDesc.text = superMarketItems[indexPath.row].desc
//        cell.itemImage.image = UIImage(named: superMarketItems[indexPath.row].image)
//        cell.itemPrice.text = "\(superMarketItems[indexPath.row].price)"
//        cell.setup(item: superMarketItems[indexPath.row])
        cell.configureCell(item: superMarketItems[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let detailsVC = storyboard?.instantiateViewController(withIdentifier: "ItemDetailsViewController") as! ItemDetailsViewController
        detailsVC.item = superMarketItems[indexPath.row]
        self.title = "Back"
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }

}
