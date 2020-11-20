//
//  Product.swift
//  TabbarApp
//
//  Created by kevin on 19/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import Foundation
class Product {
  var name: String?
  var cellImageName: String?
  var desc: String?
  
  init(name: String, cellImageName: String, desc: String) {
    self.name = name
    self.cellImageName = cellImageName
    self.desc = desc
  }
}
