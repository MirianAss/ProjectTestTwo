//
//  CustomCellXib.swift
//  ProjectFashion
//
//  Created by Mirian Santana on 08/03/23.
//

import UIKit

class CustomCellXib: UITableViewCell {
    
    @IBOutlet weak var imageXib: UIImageView!
    @IBOutlet weak var lblXib: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupFashion(fashion: FashionStyles) {
        lblXib.text = fashion.title
        imageXib.image = UIImage(named: fashion.image)
    }
    
}
