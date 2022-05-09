//
//  FeedCollectionViewCell.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/05/09.
//

import UIKit

final class FeedCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "FeedCollectionViewCell"
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var topName: UILabel!
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var heartCount: UILabel!
    @IBOutlet var contentsLabels: [UILabel]!
    @IBOutlet weak var commentLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Extensions
extension FeedCollectionViewCell {
    private func setData(data: FeedDataModel) {
        profileImage.image = data.profileImage
        topName.text = data.topName
        feedImage.image = data.feedImage
        heartCount.text = data.heartCountDescription
        contentsLabels[1].text = data.bottomName
        contentsLabels[2].text = data.description
        commentLabel.text = data.commentCountDescription
    }
}
