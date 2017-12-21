//
//  DetailViewController.swift
//  whatdoyouwant
//
//  Created by SWUCOMPUTER on 2017. 12. 21..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {
    
    var detailLocation: NSManagedObject?

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var placeLabel: UILabel!
    @IBOutlet var memoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let md = detailLocation {
            nameLabel.text = md.value(forKey: "name") as? String
            priceLabel.text = md.value(forKey: "price") as? String
            placeLabel.text = md.value(forKey: "place") as? String
            memoLabel.text = md.value(forKey: "memo") as? String
            dateLabel.text = md.value(forKey: "date") as? String
            
        }
        self.title = nameLabel.text

    }
}
