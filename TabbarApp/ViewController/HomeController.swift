//
//  HomeController.swift
//  TabbarApp
//
//  Created by kevin on 19/11/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private var products: [Product]?
    @IBOutlet weak var productTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        productTableView.register(ProductCell.self, forCellReuseIdentifier: "productCell")
        products = [
          Product(name: "Smart apple watch", cellImageName: "Account-on", desc: "phone-fullscreen1"),
          Product(name: "Smart home", cellImageName: "Funds-on", desc: "phone-fullscreen2"),
          Product(name: "SMRT ", cellImageName: "History-on", desc: "phone-fullscreen3"),
          Product(name: "Bycicle", cellImageName: "Home-on", desc: "phone-fullscreen4")
        ]
        ApolloConnect.shared.client.fetch(query: LaunchListQuery()) { result in
          switch result {
          case .success(let graphQLResult):
            print("Success! Result: \(graphQLResult)")
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  products!.count 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    @IBAction func openDetailTransaction(_ sender: Any) {
        print("go to detail")
        let titleDetail = "Hello "
        let storyBoard: UIStoryboard = UIStoryboard(name: "DetailTransaction", bundle: nil)
        let detailViewController = storyBoard.instantiateViewController(withIdentifier: "detailTransactionVC") as! DetailViewController
        detailViewController.titleTransaction = titleDetail
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemCell = tableView.dequeueReusableCell(withIdentifier: "productCell") as! ProductCell
        itemCell.initProductCell(product: products![indexPath.row])
        return itemCell;
    }

  
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//    }
}
