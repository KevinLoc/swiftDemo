//
//  ProductCell.swift
//  TabbarApp
//
//  Created by kevin on 20/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var descProduct: UILabel!
    @IBOutlet weak var titleProduct: UILabel!
    @IBOutlet weak var imgProduct: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func initProductCell(product : Product){
        self.titleProduct.text =  product.name;
        self.descProduct.text = product.desc;
        self.imgProduct.image = UIImage(named:product.cellImageName ?? "Home-on")
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
