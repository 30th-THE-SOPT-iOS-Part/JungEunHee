//
//  MusicTableViewCell.swift
//  Third_Seminar
//
//  Created by 정은희 on 2022/04/23.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Initialization
    override func awakeFromNib() {
        super.awakeFromNib()
        // 객체가 초기화(= 인스턴스화) 된 후 호출되는 메서드 (like viewDidLoad())
        // 셀이 load 되었을 때 초기화해줄 작업들을 넣어준다.
    }
}

extension MusicTableViewCell {
    func setData(_ musicData: MusicDataModel) {
        // 각 Cell별로 다른 정보가 표시되어야 하므로, 값을 넣어주는 함수를 생성함.
        coverImage.image = musicData.coverImage
        titleLabel.text = musicData.musicTitle
        descriptionLabel.text = musicData.description
    }
}
