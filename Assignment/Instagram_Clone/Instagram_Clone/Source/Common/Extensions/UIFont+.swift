//
//  UIFont+.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit.UIFont

extension UIFont {
    static func font(_ type: Const.Font, ofSize size: CGFloat) -> UIFont {
        return UIFont(name: type.rawValue, size: size)!
    }
}


