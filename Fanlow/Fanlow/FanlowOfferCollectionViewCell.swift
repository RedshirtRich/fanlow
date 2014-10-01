//
//  FanlowOfferCollectionViewCell.swift
//  Fanlow
//
//  Created by Rich Tanner on 9/23/14.
//  Copyright (c) 2014 Fanlow. All rights reserved.
//

import UIKit

class FanlowOfferCollectionViewCell: UICollectionViewCell {

    @IBOutlet var dateLabel: UILabel?
    @IBOutlet var userOne: UIImageView?
    @IBOutlet var userTwo: UIImageView?
    @IBOutlet var userThree: UIImageView?
    @IBOutlet var moreView: UIView?

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configureCellForOffer() {
        
        roundAndStyleView(userOne!)
        roundAndStyleView(userTwo!)
        roundAndStyleView(userThree!)
        roundAndStyleView(moreView!)
        
        
//        userOne?.layer.masksToBounds = true
//        userTwo?.layer.masksToBounds = true
//        userThree?.layer.masksToBounds = true
//        moreView?.layer.masksToBounds = true
//        
//        
//        userOne?.layer.cornerRadius = 20
//        userTwo?.layer.cornerRadius = 20
//        userThree?.layer.cornerRadius = 20
//        moreView?.layer.cornerRadius = 20
        
    }
    
    func roundAndStyleView(styleView: UIView) {
        styleView.layer.masksToBounds = true
        styleView.layer.cornerRadius = 20
        styleView.layer.borderColor = UIColor.grayColor().CGColor
        styleView.layer.borderWidth = 1
    }
    
}
