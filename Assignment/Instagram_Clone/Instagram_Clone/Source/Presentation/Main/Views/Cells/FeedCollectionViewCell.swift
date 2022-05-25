//
//  FeedCollectionViewCell.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/05/09.
//

import UIKit

final class FeedCollectionViewCell: UICollectionViewCell {

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
    func setData(data: FeedDataModel) {
        profileImage.image = data.makeProfileImage()
        topName.text = data.topName
        feedImage.image = data.makeFeedImage()
        heartCount.text = data.heartCountDescription
//        contentsLabels[0].text = data.bottomName
//        contentsLabels[1].text = data.description
        commentLabel.text = data.commentCountDescription
    }
}
