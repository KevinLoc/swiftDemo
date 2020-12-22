//
//  LoginController.swift
//  TabbarApp
//
//  Created by kevin on 18/12/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var usernameTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginNugget(_ sender: Any) {
        let userName = usernameTextfield.text
        let password = passwordTextfield.text
        ApolloConnect.shared.client.perform(mutation: LoginAccountMutation(username: userName!, password: password!)) { result in
            switch result {
            case .success(let graphQLResult):
                print(graphQLResult.data ?? [])
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
}
