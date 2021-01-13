//
//  MainTabBarController.swift
//  TabbarApp
//
//  Created by kevin on 16/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    let button = UIButton.init(type: .custom)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        button.setImage(UIImage(named: "Home-on.png"), for: .normal)
        //        button.setTitle("Nugget", for: .normal)
        //        button.setTitleColor(.black, for: .normal)
        //        button.setTitleColor(.yellow, for: .highlighted)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 32
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
        button.addTarget(self, action: #selector(self.showPopupView), for: UIControl.Event.touchUpInside)
        self.view.insertSubview(button, aboveSubview: self.tabBar)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // safe place to set the frame of button manually
        button.frame = CGRect.init(x: self.tabBar.center.x - 32, y: self.view.bounds.height - 115, width: 64, height: 64)
    }
    
    @objc func showPopupView (){
        //        let popupView:UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        //        popupView.backgroundColor = UIColor.red;
        //        if let window = UIApplication.shared.windows.first {
        //            window.addSubview(popupView);
        //        }
        let popupView = Bundle.main.loadNibNamed("HomeView", owner:
            self, options: nil)?.first as? HomeView
        popupView?.backgroundColor = UIColor.white;
        self.view.addSubview(popupView!)
        popupView?.frame = CGRect(x:0, y: 0, width: view.frame.width, height: view.frame.height)
    }
    
}
