//
//  HomeDataSourceController.swift
//  Twitter
//
//  Created by SuryaKant Sharma on 14/01/18.
//  Copyright © 2018 SuryaKant Sharma. All rights reserved.
//

import UIKit
import LBTAComponents

class HomeDataSourceController: DatasourceController {
    let errorLabel: UILabel = {
       let label = UILabel()
       label.text = "Apologise, Please try again later..."
       label.textAlignment = .center
       label.numberOfLines = 0
       label.isHidden = true
       return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(errorLabel)
        errorLabel.fillSuperview()
        collectionView?.backgroundColor = UIColor(r: 232,g: 236, b: 241)
        setNavigationBar()
        Service.shared.fetchHomeFeed { homeDataSource, err  in
            if let _ = err {
                self.errorLabel.isHidden = false
            }
            self.collectionViewLayout.invalidateLayout()
            self.datasource = homeDataSource
        }
    }
 
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionViewLayout.invalidateLayout()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let user = self.datasource?.item(indexPath) as? User {
            let calEstimatedHeight = estimatedHeight(forText: user.bio)
            return CGSize(width: view.frame.width, height: calEstimatedHeight + 28 + 28 + 10)
          }
        if let tweet = self.datasource?.item(indexPath) as? Tweet {
            let calEstimatedHeight = estimatedHeight(forText: tweet.message)
            return CGSize(width: view.frame.width, height: calEstimatedHeight + 28 + 28 + 10 + 8)
        }
        return CGSize(width: view.frame.width, height: 150)
    }
    private func estimatedHeight(forText text: String) -> CGFloat {
        let attributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14)]
        let size = CGSize(width: view.frame.width - 12 - 50 - 8 - 5  , height: 10000)
        let estimatedFrameOfTextView = NSString(string: text).boundingRect(with: size, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attributes, context: nil)
        return estimatedFrameOfTextView.height
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        guard section == 0 else {
            return .zero
        }
        return CGSize(width: view.frame.width, height: 50)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        guard section == 0 else {
            return .zero
        }
        
        return CGSize(width: view.frame.width, height: 64)
    }
}
