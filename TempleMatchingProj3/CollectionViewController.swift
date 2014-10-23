//
//  CollectionViewController.swift
//  TempleMatchingProj3
//
//  Created by Anthony Frehner on 10/20/14.
//  Copyright (c) 2014 Anthony Frehner. All rights reserved.
//

import UIKit

class CollectionViewController : UIViewController, UICollectionViewDataSource, UITableViewDataSource {
    // MARK: Properties
    
    let templeCollection = TempleCollection()
    
    
    // MARK: Collection view data source required
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return the number of items that will be repeated
        return templeCollection.TEMPLES.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("TemplePictureCell", forIndexPath: indexPath) as UICollectionViewCell
        
        if let cardCell = cell as? TemplePictureCollectionViewCell {
            let tempTemple = templeCollection.TEMPLES[indexPath.row]
            cardCell.templeButton.setBackgroundImage(UIImage(named: tempTemple.filename), forState: .Normal)
            cardCell.templeLabel.text = "\(tempTemple.name)"
        }
        
        return cell
    }
    
    // MARK: Table view data source required
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("TempleNameTableCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = "\(templeCollection.TEMPLES[indexPath.row].name)"
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return templeCollection.TEMPLES.count
    }

}
