//
//  HomeDataSource.swift
//  Twitter
//
//  Created by SuryaKant Sharma on 20/01/18.
//  Copyright © 2018 SuryaKant Sharma. All rights reserved.
//

import UIKit
import LBTAComponents
 
class HomeDataSource: Datasource {
    let users: [User] = {
       let surya = User(name: "Surya", userName: "@bksurya", bioText: "Senior IOS Developer. He is also a rajYogi and Rajrishi. He is practisioning meditation since 6 years.", profileImage: #imageLiteral(resourceName: "ProfileImage"))
       let brain = User(name: "Brain", userName: "@letBuildthatApp", bioText: "IOS Teacher for ios swift and objective c", profileImage: #imageLiteral(resourceName: "ProfileImage"))
        return  [surya, brain]
    }()
    let tweets = ["Tweet1","Tweet2"]
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.row]
    }
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
    override func numberOfSections() -> Int {
        return 2
    }
}
