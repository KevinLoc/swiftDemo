//
//  HomeController.swift
//  TabbarApp
//
//  Created by kevin on 19/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private var products: [Product]?
    @IBOutlet weak var productTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        productTableView.register(ProductCell.self, forCellReuseIdentifier: "productCell")
        products = [
          Product(name: "Smart apple watch", cellImageName: "Account-on", desc: "phone-fullscreen1"),
          Product(name: "Smart home", cellImageName: "Funds-on", desc: "phone-fullscreen2"),
          Product(name: "SMRT ", cellImageName: "History-on", desc: "phone-fullscreen3"),
          Product(name: "Bycicle", cellImageName: "Home-on", desc: "phone-fullscreen4")
        ]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (products != nil) ? products!.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemCell = tableView.dequeueReusableCell(withIdentifier: "productCell") as! ProductCell
        itemCell.initProductCell(product: products![indexPath.row])
        return itemCell;
    }

}
