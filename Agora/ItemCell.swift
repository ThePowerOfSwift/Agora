//
//  ItemCell.swift
//  Agora
//
//  Created by Varun Shenoy on 11/23/16.
//  Copyright © 2016 Varun Shenoy. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    
    func setUpCell(obj: Item) {
        imageView.image = obj.image
        costLabel.text = NSString(format:"     $%.2f   ", obj.cost) as String
        itemNameLabel.text = obj.name
        ownerLabel.text = obj.owner
        let condition = obj.condition
        if condition == "New with Tags" {
            conditionLabel.textColor = UIColor(red:0.00, green:0.69, blue:0.42, alpha:1.00)
        } else if condition == "Pre-owned" {
            conditionLabel.textColor = UIColor(red:1.00, green:0.49, blue:0.05, alpha:1.00)
        } else {
            conditionLabel.textColor = UIColor(red:0.25, green:0.35, blue:0.59, alpha:1.00)
        }
        conditionLabel.text = obj.condition
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        //You Code here
        self.layer.shadowColor = UIColor(red:0.88, green:0.88, blue:0.88, alpha:1.00).cgColor
        self.layer.shadowOffset = CGSize(width:0,height: 2.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 1.0
    }
    
}