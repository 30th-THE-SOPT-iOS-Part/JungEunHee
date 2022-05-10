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
        StoryDataModel(profileImage: Const.Image.icnAvatar1, profileName: "avatar1"),
        StoryDataModel(profileImage: Const.Image.icnAvatar2, profileName: "avatar2"),
        StoryDataModel(profileImage: Const.Image.icnAvatar3, profileName: "avatar3"),
        StoryDataModel(profileImage: Const.Image.icnAvatar4, profileName: "avatar4"),
        StoryDataModel(profileImage: Const.Image.icnAvatar5, profileName: "avatar5"),
        StoryDataModel(profileImage: Const.Image.icnAvatar6, profileName: "avatar6")
    ]
}
