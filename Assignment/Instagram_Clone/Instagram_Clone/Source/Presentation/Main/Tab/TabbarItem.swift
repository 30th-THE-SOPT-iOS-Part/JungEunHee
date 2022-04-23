//
//  TabbarItem.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/22.
//

import UIKit

enum TabBarItem: Int, CaseIterable {
    case home
    case search
    case reels
    case shop
    case profile
}

extension TabBarItem {
    var inActiveIcon: UIImage? {
        switch self {
        case .home:
            return Const.Image.icnHome
        case .search:
            return Const.Image.icnSearch
        case .reels:
            return Const.Image.icnReels
        case .shop:
            return Const.Image.icnShop
        case .profile:
            return Const.Image.icnProfile
        }
    }
    
    var activeIcon: UIImage? {
        switch self {
        case .home:
            return Const.Image.icnHomeSelected
        case .search:
            return Const.Image.icnSearchSelected
        case .reels:
            return Const.Image.icnReelsSelected
        case .shop:
            return Const.Image.icnShopSelected
        case .profile:
            return Const.Image.icnProfileSelected
        }
    }
    
    public func asTabBarItem() -> UITabBarItem {
        return UITabBarItem(
            title: "",  // 타이틀 없어서 전부 비워둠
            image: inActiveIcon,
            selectedImage: activeIcon
        )
    }
}
