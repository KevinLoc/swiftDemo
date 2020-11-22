//
//  TransactionCell.swift
//  TabbarApp
//
//  Created by kevin on 21/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class TransactionCell: UITableViewCell {

    @IBOutlet weak var tranLable: UILabel!
    @IBOutlet weak var tranDesc: UILabel!
    @IBOutlet weak var tranBank: UILabel!
    @IBOutlet weak var tranIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func initTransactionCell (tranTitle : String, tranDesc: String, tranBank:String, tranIcon : String){
        self.tranLable.text = tranTitle
        self.tranDesc.text = tranDesc
        self.tranBank.text = tranBank
        self.tranIcon.image = UIImage(named: tranIcon)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
