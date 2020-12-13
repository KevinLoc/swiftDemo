//
//  Apollo.swift
//  TabbarApp
//
//  Created by kevin on 8/12/20.
//  Copyright © 2020 kevin. All rights reserved.
//

import Foundation
import Apollo

class ApolloConnect{
    // 1
    static let shared = ApolloConnect()
    // 2
    let client: ApolloClient
    // 3
    init() {
        client = ApolloClient(url: URL(string: "https://apollo-fullstack-tutorial.herokuapp.com")!)
    }
}
