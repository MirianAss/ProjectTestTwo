//
//  FashionStyles.swift
//  ProjectFashion
//
//  Created by Mirian Santana on 08/03/23.
//

import UIKit

class FashionStyles: NSObject {
    var title: String
    var image: String
    var text: String
    var style: String
    
    init(title: String, image: String, text: String, style: String) {
        self.title = title
        self.image = image
        self.text = text
        self.style = style
    }

}
