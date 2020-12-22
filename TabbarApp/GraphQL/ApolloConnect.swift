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
    static let shared = ApolloConnect()
    let client: ApolloClient
    init() {
        client = {
            let configuration = URLSessionConfiguration.default
            let token = UserDefaults.standard.value(forKey: "token")
            if(token != nil){
                configuration.httpAdditionalHeaders = ["Content-Type":"application/json", "Authorization":"jwt \(token!)"]
            }
            else{
                 configuration.httpAdditionalHeaders = ["Content-Type":"application/json"]
            }
           
            let url = URL(string: "http://staging3c8594f3.nuggetappserver.com/graphql/")!
            return ApolloClient(
                networkTransport: HTTPNetworkTransport( url: url,  session: URLSession(configuration: configuration))
            )
        }()
    }
}
