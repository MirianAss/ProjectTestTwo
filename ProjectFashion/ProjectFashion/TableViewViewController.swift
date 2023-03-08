//
//  TableViewViewController.swift
//  ProjectFashion
//
//  Created by Mirian Santana on 08/03/23.
//

import UIKit

class TableViewViewController: UIViewController {
    
    var styleOne = FashionStyles(title: "", image: "", text: "", style: "")
    var styleTwo = FashionStyles(title: "", image: "", text: "", style: "")
    var styleThree = FashionStyles(title: "", image: "", text: "", style: "")
    var styleFour = FashionStyles(title: "", image: "", text: "", style: "")
    var styleFive = FashionStyles(title: "", image: "", text: "", style: "")
    
    var arrayStyles: [FashionStyles] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
