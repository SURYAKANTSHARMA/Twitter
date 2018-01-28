//
//  Tweet.swift
//  Twitter
//
//  Created by SuryaKant Sharma on 26/01/18.
//  Copyright © 2018 SuryaKant Sharma. All rights reserved.
//

import Foundation

struct Tweet: Codable {
    let user: User
    let message: String
}
