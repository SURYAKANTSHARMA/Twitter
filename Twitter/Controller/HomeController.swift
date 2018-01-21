////
////  HomeController.swift
////  Twitter
////
////  Created by SuryaKant Sharma on 14/01/18.
////  Copyright © 2018 SuryaKant Sharma. All rights reserved.
////
//
//import UIKit
//
//class WordCell: UICollectionViewCell {
//    
//    let label: UILabel = {
//       let label = UILabel()
//       label.text = "Test"
//       label.translatesAutoresizingMaskIntoConstraints = false
//       return label
//    }()
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setUpViews()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func setUpViews() {
//        backgroundColor = .yellow
//        addSubview(label)
//        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        label.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//        label.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
//        label.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
//    }
//}
//
//class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
//    let cellId = "cellId"
//    let headerId = "headerId"
//    let footerId = "footerId"
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        collectionView?.backgroundColor = .white
//        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellId)
//        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
//        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerId)
//    }
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 4
//    }
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//        return cell
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: view.frame.width, height: 50)
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: view.frame.width, height: 50)
//    }
//    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        if kind == UICollectionElementKindSectionHeader {
//        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId, for: indexPath)
//        header.backgroundColor = .blue
//        return header
//        } else {
//        let footer = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerId, for: indexPath)
//        footer.backgroundColor = .green
//        return footer
//        }
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
//        return CGSize(width: view.frame.width, height: 100)
//    }
//
//}

