//
//  MasterViewController.swift
//  Fanlow
//
//  Created by Rich Tanner on 9/23/14.
//  Copyright (c) 2014 Fanlow. All rights reserved.
//

import UIKit

class MasterViewController: UICollectionViewController {

    var objects = NSMutableArray()
    var selectedIndex: Int = -1


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var owlHeader = UIImage(named: "owlHeader")
        navigationItem.titleView = UIImageView(image: owlHeader)
        
//        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
//        self.navigationItem.rightBarButtonItem = addButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(sender: AnyObject) {
        objects.insertObject(NSDate.date(), atIndex: 0)
        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        self.collectionView?.insertItemsAtIndexPaths([indexPath])
    }

    // MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showOfferDetail" {
            if selectedIndex != -1 {
//                let object = objects[selectedIndex] as NSDate
//                (segue.destinationViewController as DetailViewController).detailItem = object
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as FanlowOfferCollectionViewCell
        

        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.blackColor().CGColor
        cell.layer.shadowRadius = 2
        cell.layer.shadowOpacity = 0.5
        cell.layer.shadowOffset = CGSizeMake(0, 1)
        
        
        
        
        cell.configureCellForOffer()
//        let object = objects[indexPath.row] as NSDate
//        cell.dateLabel?.text = object.description
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        
        selectedIndex = indexPath.row
    }

}

