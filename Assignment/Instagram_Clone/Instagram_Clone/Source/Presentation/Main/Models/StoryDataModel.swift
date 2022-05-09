//
//  StoryDataModel.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/05/09.
//

import UIKit

struct StoryDataModel {
    var profileImage: UIImage?
    let profileName: String
}

extension StoryDataModel {
    static let dummy: [StoryDataModel] = [
        StoryDataModel(profileImage: Const.Image.icnAvantar1, profileName: "avatar1"),
        StoryDataModel(profileImage: Const.Image.icnAvantar2, profileName: "avatar2"),
        StoryDataModel(profileImage: Const.Image.icnAvantar3, profileName: "avatar3"),
        StoryDataModel(profileImage: Const.Image.icnAvantar4, profileName: "avatar4"),
        StoryDataModel(profileImage: Const.Image.icnAvantar5, profileName: "avatar5"),
        StoryDataModel(profileImage: Const.Image.icnAvantar6, profileName: "avatar6")
    ]
}
