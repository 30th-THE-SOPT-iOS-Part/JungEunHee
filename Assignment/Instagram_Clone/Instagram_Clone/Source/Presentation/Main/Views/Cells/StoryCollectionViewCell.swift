//
//  StoryCollectionViewCell.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/05/09.
//

import UIKit

final class StoryCollectionViewCell: UICollectionViewCell {
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension StoryCollectionViewCell {
    func setData(data: StoryDataModel) {
        profileImage.image = data.profileImage
        nameLabel.text = data.profileName
    }
}
