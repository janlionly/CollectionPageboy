//
//  ViewController.swift
//  CollectionPageboyDemo
//
//  Created by janlionly on 2019/12/27.
//  Copyright © 2019 Janlionly. All rights reserved.
//

import UIKit
import CollectionPageboy

struct CellDataModel {
    let title: String
    let subtitle: String
    let url: String
}

class ViewController: UIViewController {

    @IBOutlet weak var selectedImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let boy = CollectionPageboy<String>()
        boy.items = ["a", "b","c", "d","e", "f","g", "h","i", "j","k", "l","m", "n","o", "p","q", "r","s", "t"]
        boy.collectionHeight = 290
        boy.collectionBGColor = .blue
        boy.customCollectionCellNibName = "MyCustomCell"
        boy.cellIdentifier = "MyCustomCell"
        boy.style = .vertical
        boy.rowCount = 4
        boy.columnCount = 4
        boy.present(based: self)
    }
    
    @IBAction func button2Tapped(_ sender: Any) {
        let boy = CollectionPageboy<CellDataModel>()
        var items: [CellDataModel] = []

 ///*
        // warning: limited download times
        let imageids = ["1142184", "1187379", "1175770", "1175572", "1135007", "558697", "545276",
                        "522392", "522393", "522390", "1489", "1175571"]
        for i in 0..<imageids.count {
            let model = CellDataModel(title: "\(imageids[i])", subtitle: "sub\(i)", url: "https://www.easyicon.net/download/png/\(imageids[i])/64")
            items.append(model)
        }
 // */
        
 /*
        // another test
        for i in 0..<20 {
            let model = CellDataModel(title: "\(i)", subtitle: "sub\(i)", url: "http://pic.sc.chinaz.com/files/pic/pic9/201907/bpic12885.jpg")
            items.append(model)
        }
 // */
        boy.items = items
        boy.collectionHeight = 172
        boy.collectionBGColor = .black
        boy.customCollectionCellNibName = "EmojiCell"
        boy.cellIdentifier = "Cell"
        boy.style = .horizontal
        boy.rowCount = 2
        boy.columnCount = 4
        boy.present(based: self)
        
        weak var weakBoy = boy
        boy.selectedItemClosure = { [weak self] item, cell in
            print("selected item is \(item)")
            if let c = cell as? EmojiCell {
                self?.selectedImageView.image = c.imageView.image
            }
            weakBoy?.dismiss()
        }
    }
}

