//
//  HomeDataSourceController+NavBar.swift
//  Twitter
//
//  Created by SuryaKant Sharma on 21/01/18.
//  Copyright © 2018 SuryaKant Sharma. All rights reserved.
//

import UIKit

extension HomeDataSourceController {
    func setNavigationBar() {
        setLeftNavigationItem()
        setRightNavigationItems()
        setRemainingNavigationItem()
    }
    private func setLeftNavigationItem() {
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    private func setRightNavigationItems() {
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
    }
    
    private func setRemainingNavigationItem() {
        let titleImageView = UIImageView(image:#imageLiteral(resourceName: "title_icon"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor.gray
        view.addSubview(navBarSeparatorView)
        
//        navBarSeparatorView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
//        navBarSeparatorView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        navBarSeparatorView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
//        navBarSeparatorView.heightAnchor.constraint(equalToConstant: 5).isActive = true
        navBarSeparatorView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 1)
    }
    
}
