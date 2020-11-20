//
//  HomeController.swift
//  TabbarApp
//
//  Created by kevin on 19/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    private var products: [Product]?
    override func viewDidLoad() {
        super.viewDidLoad()
        products = [
          Product(name: "1907 Wall Set", cellImageName: "image-cell1", desc: "phone-fullscreen1"),
          Product(name: "1921 Dial Phone", cellImageName: "image-cell2", desc: "phone-fullscreen2"),
          Product(name: "1937 Desk Set", cellImageName: "image-cell3", desc: "phone-fullscreen3"),
          Product(name: "1984 Moto Portable", cellImageName: "image-cell4", desc: "phone-fullscreen4")
        ]
    }
    
    

}
