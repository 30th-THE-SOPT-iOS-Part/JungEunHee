//
//  UIView+.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit.UIView

extension UIView {
    // set
    public func addSubviews(_ views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
    
    // style
    public func makeRounded(radius: CGFloat) {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }
    
    public func makeRoundedWithBorder(radius: CGFloat, borderColor: CGColor, borderWith: CGFloat = 1) {
        makeRounded(radius: radius)
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWith
    }
    
    public func makeRoundedSpecificCorner(corners: UIRectCorner, cornerRadius: Double) {
        let size = CGSize(width: cornerRadius, height: cornerRadius)
        let bezierPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
        /*
         베지어 곡선 Bezier Curves -> 물체의 운동 경로를 나타내는 곡선
         베지어 경로 Bezier Path -> 도형을 그릴 때 사용되는 상수
         */
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.frame = self.bounds
        shapeLayer.path = bezierPath.cgPath
        self.layer.mask = shapeLayer
    }
}
