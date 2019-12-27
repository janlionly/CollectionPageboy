# CollectionPageboy

[![Version](https://img.shields.io/cocoapods/v/CollectionPageboy.svg?style=flat)](https://cocoapods.org/pods/CollectionPageboy)
[![License](https://img.shields.io/cocoapods/l/CollectionPageboy.svg?style=flat)](https://github.com/janlionly/CollectionPageboy/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/CollectionPageboy.svg?style=flat)](https://github.com/janlionly/CollectionPageboy)
![Swift](https://img.shields.io/badge/%20in-swift%205.1-orange.svg)

![CollectionPageboy demo image](https://media.giphy.com/media/eMOJpktZZKrlemQn2i/giphy.gif)

## Description
**CollectionPageboy** is a collection view controller which support to customize your xib''s cell, and support scrolling vertical or horizontal.


## Installation

### CocoaPods

```ruby
pod 'CollectionPageboy'
```

## Usage

```swift
// in some controller:
let boy = CollectionPageboy<String>()
boy.items = ["a", "b","c", "d","e", "f","g", "h"]
boy.collectionHeight = 290
boy.collectionBGColor = .blue
boy.customCollectionCellNibName = "MyCustomCell"
boy.cellIdentifier = "MyCustomCell"
boy.style = .vertical
boy.rowCount = 4
boy.columnCount = 4
boy.present(based: self)

// then customize your collection view cell with xib
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
// more usages please download to see the sources demo.
```



## Requirements

- iOS 9.0+
- Swift 4.2 to 5.1

## Author

Visit my github: [janlionly](https://github.com/janlionly)<br>
Contact with me by email: janlionly@gmail.com

## Contribute

I would love you to contribute to **CollectionPageboy**

## License

**CollectionPageboy** is available under the MIT license. See the [LICENSE](https://github.com/janlionly/CollectionPageboy/blob/master/LICENSE) file for more info.
