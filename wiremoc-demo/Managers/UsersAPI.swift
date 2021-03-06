//
//  UsersListAPI.swift
//  wiremoc-demo
//
//  Created by Eiji Kushida on 2017/07/15.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//
import UIKit

final class UsersListAPI {

    func fetch() {

        let router = Router.users([:])

        APIClient().request(router: router) { (response) in

            switch response {
            case .success(let result) :
                print(result)
                break

            case .failure(let error):
                print(error.localizedDescription)
                break
            }
        }
    }
}
