//
//  MenuView.swift
//  TabbarApp
//
//  Created by kevin on 12/1/21.
//  Copyright © 2021 kevin. All rights reserved.
//

import UIKit

class MenuView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBAction func hideMenu(_ sender: Any) {
        
        self.removeFromSuperview()
    }
}
