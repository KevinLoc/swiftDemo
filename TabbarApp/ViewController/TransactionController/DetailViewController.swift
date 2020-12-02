//
//  DetailViewController.swift
//  TabbarApp
//
//  Created by kevin on 21/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleTransactionLabel: UILabel!
    var titleTransaction: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTransactionLabel?.text = titleTransaction
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true;
    }
    
    
    @IBAction func goBackHomeController(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBAction func updateTransactionItem(_ sender: Any) {
        let item = ["title" :"Trans title update", "amount": "100", "index" : "0"]
        let nc = NotificationCenter.default
        nc.post(name: Notification.Name("UpdateTransaction"), object: item)
        _ = navigationController?.popViewController(animated: true)
    }
    
}
