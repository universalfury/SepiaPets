//
//  PetListingTableViewCell.swift
//  SepiaSets
//
//  Created by Vartika Singh on 28/11/22.
//

import UIKit

class PetListingTableViewCell: UITableViewCell {
    @IBOutlet weak var petDisplayImage: UIImageView!
    @IBOutlet weak var petDisplayTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(_ displayName: String, _ displayImage: String) {
        self.petDisplayTitle.text = String(describing: displayName)
        if let displayImageURL = URL(string: (String(describing: displayImage))) {
            if let imageData = try? Data(contentsOf: displayImageURL) {
                if let loadedImage = UIImage(data: imageData) {
                    self.petDisplayImage.image = loadedImage
                }
            }
        }
    }
    
}
