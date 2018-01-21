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
  
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor(r: 232,g: 236, b: 241)
        let homeDataSource = HomeDataSource()
        datasource = homeDataSource
        setNavigationBar()
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let user = self.datasource?.item(indexPath) as? User {
            let bioText = user.bioText
            let attributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14)]
            let size = CGSize(width: view.frame.width - 12 - 50 - 8 - 5  , height: 10000)
            let estimatedFrameOfBioTextView = NSString(string: bioText).boundingRect(with: size, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attributes, context: nil)
            return CGSize(width: view.frame.width, height: estimatedFrameOfBioTextView.height + 28 + 28 + 10)
        }
        return CGSize(width: view.frame.width, height: 150)
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
