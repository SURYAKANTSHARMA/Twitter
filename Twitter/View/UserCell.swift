//
//  UserCell.swift
//  Twitter
//
//  Created by SuryaKant Sharma on 21/01/18.
//  Copyright © 2018 SuryaKant Sharma. All rights reserved.
//

import UIKit
import LBTAComponents

class UserCell: DatasourceCell {
    override var datasourceItem: Any? {
        didSet {
            guard let user = datasourceItem as? User else { return }
            nameLabel.text = user.name
            userNameLabel.text = user.userName
            profileImageView.image = user.profileImage
            bioTextView.text = user.bioText
        }
    }
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Surya kant"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    let userNameLabel: UILabel  = {
        let label = UILabel()
        label.text = "@build that app"
        label.textColor = UIColor(r: 130, g: 130, b: 130)
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        imageView.backgroundColor = .red
        return imageView
    }()
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.text = "iphone ipad, IOS programming community join us for learning swift and objective c"
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.backgroundColor = .clear
        return textView
    }()
    let followButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitterBlue.cgColor
        button.layer.borderWidth = 1
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(twitterBlue, for: .normal)
        button.setTitle("Follow", for: .normal)
        button.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsetsMake(0, -8, 0, 0)
        return button
    }()
    
    
    open override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        //separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        backgroundColor = .white
        addSubview(nameLabel)
        addSubview(profileImageView)
        addSubview(userNameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        userNameLabel.anchor(nameLabel.bottomAnchor, left: profileImageView.rightAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        bioTextView.anchor(userNameLabel.bottomAnchor, left: userNameLabel.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 8, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        followButton.anchor(topAnchor, left: nil, bottom: nil, right: rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 8, widthConstant: 120, heightConstant: 34)
    }
}
