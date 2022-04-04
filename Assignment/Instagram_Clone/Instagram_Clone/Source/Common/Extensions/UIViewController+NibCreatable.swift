//
//  UIViewController+NibCreatable.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit.UIViewController

extension UIViewController: NibCreatable {
    // instanceFromNib() 메서드에서 사용될 변수이기 때문에 class var로 선언.
    
    public final class var nib: UINib {
        let nibName = Self.nibName
        let nibBundle = Self.nibBundle
        return UINib(nibName: nibName, bundle: nibBundle)
    }
    
    @objc
    public class var nibBundle: Bundle? {
        return Bundle(for: self)
    }
    
    @objc
    public class var nibName: String {
        return "\(self)"
    }
    
    public final class func instanceFromNib() -> Self {
        // 생성자를 통해 인스턴스를 생성하지 않더라도 바로 접근 가능하도록 하기 위해 class func로 선언.
        
        return Self.init(nibName: nibName, bundle: nibBundle)
    }
}
