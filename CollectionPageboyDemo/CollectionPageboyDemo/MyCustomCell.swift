//
//  MyCell.swift
//  CollectionPageboyDemo
//
//  Created by janlionly on 2019/12/26.
//  Copyright © 2019 Janlionly. All rights reserved.
//

import UIKit
import CollectionPageboy

class MyCustomCell: PageboyCustomCollectionCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override open func setup(_ item: Any) {
        backgroundColor = UIColor.red.withAlphaComponent(0.15)
        if let str = item as? String {
            label.text = str
        }
    }
}
