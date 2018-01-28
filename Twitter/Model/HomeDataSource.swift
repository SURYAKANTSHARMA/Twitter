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
    
    let users: [User]
    let tweets: [Tweet]
    
    required init(users: [User], tweets: [Tweet]) {
        self.users = users
        self.tweets = tweets
    }
    
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
        if indexPath.section == 1 {
            return tweets[indexPath.row]
        }
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
