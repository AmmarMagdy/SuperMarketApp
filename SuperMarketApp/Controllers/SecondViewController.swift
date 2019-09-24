//
//  SecondViewController.swift
//  SuperMarketApp
//
//  Created by Afnan on 6/22/19.
//  Copyright © 2019 ammar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var superMarketTable: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "superMarketCell", for: indexPath)
        return cell
    }
    
    
}
