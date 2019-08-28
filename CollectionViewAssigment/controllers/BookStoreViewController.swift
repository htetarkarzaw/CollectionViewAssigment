//
//  BookStoreViewController.swift
//  CollectionViewAssigment
//
//  Created by Htet Arkar Zaw on 8/29/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class BookStoreViewController: UIViewController {

    let numberOfItemPerRow: CGFloat = 3
    let spaceing: CGFloat = 10
    @IBOutlet weak var collectionViewBook: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewBook.dataSource = self
        collectionViewBook.delegate = self
        collectionViewBook.registerForCell(strID: String(describing: BookCollectionViewCell.self))
        let totalPadding: CGFloat = numberOfItemPerRow * spaceing
        let itemWidth = (self.view.frame.width - totalPadding) / numberOfItemPerRow
        let layout = collectionViewBook.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 5
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth*3)
    }
    

}

extension BookStoreViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BookCollectionViewCell.self), for: indexPath)
        return item
        
    }
    
    
}

extension BookStoreViewController: UICollectionViewDelegate{
    
}
