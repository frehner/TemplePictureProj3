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
    var hidePictureLabels = true
    
    // MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: Actions
    @IBAction func matchStudySegment(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            //match mode
            hidePictureLabels = true
            collectionView.reloadData()
        } else {
            //study mode
            hidePictureLabels = false
            collectionView.reloadData()
        }
    }
    
    // MARK: Collection view data source required
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return the number of items that will be repeated
        return templeCollection.TEMPLES.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("TemplePictureCell", forIndexPath: indexPath) as UICollectionViewCell
        
        if let cardCell = cell as? TemplePictureCollectionViewCell {
            let tempTemple = templeCollection.TEMPLES[indexPath.row]
            cardCell.templeImage.image = UIImage(named: tempTemple.filename)
            cardCell.templeLabel.text = "\(tempTemple.name)"
            cardCell.templeLabel.hidden = hidePictureLabels
        }
        
        return cell
    }
    
    // MARK: Collection view other methods
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        var templeCell = templeCollection.TEMPLES[indexPath.row]
        
        let size = UIImage(named: templeCell.filename)!.size
        let height = CGFloat(140.00)
        let width = height * size.width / size.height
        
        return CGSizeMake(width, height)
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
