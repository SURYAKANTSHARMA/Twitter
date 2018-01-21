//
//  TweetCell.swift
//  Twitter
//
//  Created by SuryaKant Sharma on 21/01/18.
//  Copyright © 2018 SuryaKant Sharma. All rights reserved.
//

import UIKit
import LBTAComponents

class TweetCell: DatasourceCell {
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        imageView.image = #imageLiteral(resourceName: "ProfileImage")
        imageView.backgroundColor = .red
        return imageView
    }()
    
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        addSubview(profileImageView)
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
       
    }
}
