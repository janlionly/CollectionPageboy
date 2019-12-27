//
//  EmojiCell.swift
//  CollectionPageboyDemo
//
//  Created by janlionly on 2019/12/27.
//  Copyright © 2019 Janlionly. All rights reserved.
//

import UIKit
import CollectionPageboy

extension UIImageView {
public func setImage(from urlString: String) {
    self.image = nil
    URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in

        if error != nil {
            print(error ?? "unknown")
            return
        }
        DispatchQueue.main.async(execute: { () -> Void in
            let image = UIImage(data: data!)
            self.image = image
            self.backgroundColor = .clear
        })

    }).resume()
}}

class EmojiCell: PageboyCustomCollectionCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var subLabel: UILabel!
    
    override open func setup(_ item: Any) {
       backgroundColor = .black
    
        if let model = item as? CellDataModel {
            label.text = model.title
            subLabel.text = model.subtitle
            imageView.setImage(from: model.url)
        }
   }
    
    override var isHighlighted: Bool {
        didSet {
            if self.isHighlighted {
                backgroundColor = .gray
            } else {
                backgroundColor = .black
            }
        }
    }
}
