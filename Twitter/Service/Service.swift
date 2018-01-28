//
//  Service.swift
//  Twitter
//
//  Created by SuryaKant Sharma on 27/01/18.
//  Copyright © 2018 SuryaKant Sharma. All rights reserved.
//

import Foundation

class Service {
    static let shared = Service()
    
    class UserList: Codable {
        let users: [User]
    }
    class TweetList: Codable {
        let tweets: [Tweet]
    }
    private init() {}
    
    func fetchHomeFeed(completion: @escaping (HomeDataSource?,Error?) -> Void) {
        let url = URL(string: "https://api.letsbuildthatapp.com/twitter/home")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            do {
            let userList = try jsonDecoder.decode(UserList.self, from: data!)
            let tweetList = try jsonDecoder.decode(TweetList.self, from: data!)
            let homeDataSource = HomeDataSource(users: userList.users, tweets: tweetList.tweets)
            DispatchQueue.main.async {
                completion(homeDataSource,  nil)
                }
            } catch {
                DispatchQueue.main.async {
                completion(nil, error)
                }
            }
      }.resume()
    }
    
}
