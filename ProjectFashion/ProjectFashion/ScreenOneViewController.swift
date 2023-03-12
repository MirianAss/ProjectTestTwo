//
//  ScreenOneViewController.swift
//  ProjectFashion
//
//  Created by Mirian Santana on 08/03/23.
//

import UIKit

class ScreenOneViewController: UIViewController {
    
    @IBOutlet weak var imageFashion: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    var screenOne = FashionStyles(title: "", image: "", text: "", style: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageFashion.image = UIImage(named: screenOne.image)
        lblText.text = screenOne.text
        lblTitle.text = screenOne.title

    }
    
    @IBAction func btBack(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
