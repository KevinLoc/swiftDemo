//
//  AccountViewController.swift
//  TabbarApp
//
//  Created by kevin on 30/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var accountPageScrollView: UIScrollView!
    var view1:AccountView! = nil
    var view2:AccountView! = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountPageScrollView.delegate = self
        let sizeScreen = self.getScreenSize()
        view1 = UINib(nibName: "AccountView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? AccountView
        view1.titleTabViewLable.text = "Account screen 1"
        view1.frame = CGRect(x: 0, y: 0, width: sizeScreen.width, height: accountPageScrollView.frame.size.height)
        accountPageScrollView.addSubview(view1)
        
        view2 = UINib(nibName: "AccountView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? AccountView
        view2.titleTabViewLable.text = "Account screen 2"
        
        view2.frame = CGRect(x: sizeScreen.width, y: 0, width: sizeScreen.width, height: accountPageScrollView.frame.size.height)
        accountPageScrollView.addSubview(view2)
        accountPageScrollView.contentSize = CGSize(width: sizeScreen.width*2, height: accountPageScrollView.frame.size.height)
        accountPageScrollView.showsHorizontalScrollIndicator = false;
        
    }
    
    func getScreenSize()->(width : CGFloat, height : CGFloat){
        let sizeScreen: CGSize = UIScreen.main.bounds.size
        return (sizeScreen.width, sizeScreen.height)
    }
    
    @IBAction func selectView1(_ sender: Any) {
        let currentPosition :CGPoint = CGPoint(x: 0, y: 0)
        accountPageScrollView.setContentOffset(currentPosition, animated: true)
    }
    
    @IBAction func selectView2(_ sender: Any) {
        let sizeScreen = self.getScreenSize()
        let currentPosition :CGPoint = CGPoint(x: sizeScreen.width, y: 0)
        accountPageScrollView.setContentOffset(currentPosition, animated: true)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
