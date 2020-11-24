//
//  TransactionsViewController.swift
//  TabbarApp
//
//  Created by kevin on 21/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class TransactionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var searchTextfield: UITextField!
    @IBOutlet weak var transactionTableView: UITableView!
    var listTransaction:[String]?
    override func viewDidLoad() {
        super.viewDidLoad()
        let searchIcon = UIImage(named: "Search")
        self.addTextFieldImage(textField: searchTextfield, imgIcon: searchIcon!)
        self.listTransaction = ["Transaction 1", "Trang saction 2","Bank transaction ","Shopping transaction"]
        // Do any additional setup after loading the view.
    }
    
    func addTextFieldImage(textField: UITextField, imgIcon : UIImage)  {
        let imgViewIcon = UIImageView(frame: CGRect(
            x:0,
            y:0,
            width: 40,
            height: 40
        ))
        imgViewIcon.image = imgIcon
        textField.leftView = imgViewIcon
        textField.leftViewMode = .always
    }
    
    func addBorderBottomView (view : UIView) -> CALayer{
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.green.cgColor
        border.frame = CGRect(x: 0, y: view.frame.size.height - width, width:  view.frame.size.width, height: 1)
        border.borderWidth = width
        return border
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listTransaction?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemCell = tableView.dequeueReusableCell(withIdentifier: "transactionCell") as! TransactionCell
        itemCell.initTransactionCell(tranTitle: listTransaction?[indexPath.row] ?? "No Title", tranDesc:  listTransaction?[indexPath.row] ?? "No Desc", tranBank:  "No description1", tranIcon: "Health&Fit")
        let borderBotom = self.addBorderBottomView(view: itemCell)
        itemCell.layer.addSublayer(borderBotom)
        return itemCell;
    }

}
