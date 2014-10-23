//
//  TableCellViewController.swift
//  TempleMatchingProj3
//
//  Created by Anthony Frehner on 10/21/14.
//  Copyright (c) 2014 Anthony Frehner. All rights reserved.
//

import UIKit

class TableCellViewController : UIViewController, UITableViewDataSource {
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("TempleNameTableCell", forIndexPath: indexPath) as UITableViewCell
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
}