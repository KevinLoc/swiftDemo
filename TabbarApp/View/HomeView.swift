//
//  HomeView.swift
//  TabbarApp
//
//  Created by kevin on 18/12/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class HomeView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBAction func closePopup(_ sender: Any) {
        self.removeFromSuperview();
    }
    
}
