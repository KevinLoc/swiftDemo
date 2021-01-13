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
    var listTransactionObject:[[String:String]]?
    override func viewDidLoad() {
        super.viewDidLoad()
        let searchIcon = UIImage(named: "Search")
        self.addTextFieldImage(textField: searchTextfield, imgIcon: searchIcon!)
        self.listTransaction = ["Transaction 1", "Trang saction 2","Bank transaction ","Shopping transaction"]
        
        
        self.listTransactionObject = [["title" :"Transaction 1", "amount":"100"]]
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: #selector(updateTransaction(notification:)), name: Notification.Name("UpdateTransaction"), object: nil)
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.backgroundColor = .lightGray
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            UIView.animate(withDuration: 0.5, animations: {
                tableView.cellForRow(at: indexPath)?.backgroundColor = .none
            })
        }
        let titleDetail = "Hello " + String(indexPath.row)
        let storyBoard: UIStoryboard = UIStoryboard(name: "DetailTransaction", bundle: nil)
        let detailViewController = storyBoard.instantiateViewController(withIdentifier: "detailTransactionVC") as! DetailViewController
        detailViewController.titleTransaction = titleDetail
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    @objc func updateTransaction(notification: Notification){
        if let item = notification.object as? [String:Any] {
            //            let indexItem = (item["index"] as String).integerValue
            let indexItem =  Int(item["index"] as! String) ?? 0
            let titleItem =  item["title"] as! String
            self.listTransaction?[indexItem] = titleItem
            transactionTableView.reloadData()
        }
    }
    
    @IBAction func showMenu(_ sender: Any) {
        
        if let menuView = Bundle.main.loadNibNamed("MenuView", owner:
            self, options: nil)?.first as? MenuView, let tabbar = self.tabBarController {
            menuView.backgroundColor = UIColor.init(red: 1/255, green: 1/255, blue: 1/255, alpha: 0.7)

            tabbar.view.addSubview(menuView)
        }

    }
}
