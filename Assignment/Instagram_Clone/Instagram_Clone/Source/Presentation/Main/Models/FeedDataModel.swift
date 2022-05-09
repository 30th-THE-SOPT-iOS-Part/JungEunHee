//
//  FeedDataModel.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/05/09.
//

import UIKit

struct FeedDataModel {
    
    // MARK: - Properties
    var profileImage: UIImage?
    let topName: String
    let feedImage: UIImage?
    var heartCount: Int?    // 추후 로직을 고려해 Int로 따로 빼둠.
    var heartCountDescription: String? {
        return "좋아요 \(heartCount ?? 0)개"
    }
    let bottomName: String
    let description: String
    var commentCount: Int?  // 이하동문 ...
    var commentCountDescription: String? {
        return "댓글 \(commentCount ?? 0)개 모두 보기"
    }
    
}

extension FeedDataModel {
    static let dummy: [FeedDataModel] = [
        FeedDataModel(profileImage: Const.Image.icnAvantar1, topName: "avantar1", feedImage: Const.Image.postImage1, heartCount: 30, bottomName: "avantar1", description: "🌱 기회는 일어나는 것이 아니라 만들어내는 것이다.", commentCount: 19),
        FeedDataModel(profileImage: Const.Image.icnAvantar2, topName: "avantar2", feedImage: Const.Image.postImage2, heartCount: 330, bottomName: "avantar2", description: "⏰ 큰 목표를 이루고 싶으면 허락을 구하지 마라", commentCount: 24),
        FeedDataModel(profileImage: Const.Image.icnAvantar3, topName: "avantar3", feedImage: Const.Image.icnAvantar3, heartCount: 130, bottomName: "avantar3", description: "🌱 늘 하던 대로 하면 늘 얻던 것을 얻는다.", commentCount: 100),
        FeedDataModel(profileImage: Const.Image.icnAvantar4, topName: "avantar4", feedImage: Const.Image.postImage4, heartCount: 3, bottomName: "avantar4", description: "🌱 늘 하던 대로 하면 늘 얻던 것을 얻는다.", commentCount: 54)
    ]
}
