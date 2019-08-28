//
//  Extension.swift
//  CollectionViewAssigment
//
//  Created by Htet Arkar Zaw on 8/29/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView{
    
    func registerForCell(strID : String) {
        //        register(UINib(nibName: strID, bundle: nil), forCellReuseIdentifier: strID)
        register(UINib(nibName: strID, bundle: nil), forCellWithReuseIdentifier: strID)
    }
}
