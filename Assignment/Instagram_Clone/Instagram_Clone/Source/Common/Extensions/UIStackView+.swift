//
//  UIStackView+.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit.UIStackView

extension UIStackView {
    // set
    public func addArrangedSubviews(_ views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
}
