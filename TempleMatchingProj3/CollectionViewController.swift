//
//  CollectionViewController.swift
//  TempleMatchingProj3
//
//  Created by Anthony Frehner on 10/20/14.
//  Copyright (c) 2014 Anthony Frehner. All rights reserved.
//

import UIKit

class CollectionViewController : UIViewController, UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return the number of items that will be repeated
        return 3
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("TemplePictureCell", forIndexPath: indexPath) as UICollectionViewCell
        return cell
    }
}
