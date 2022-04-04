//
//  Font.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit

extension Const {
    public enum Font: String {
        // SFPro Font
        case SFProDisplayBold = "SF-Pro-Display-Bold"
        case SFProDisplayMedium = "SF-Pro-Display-Medium"
        case SFProDisplaySemibold = "SF-Pro-Display-Semibold"
        case SFProDisplayRegular = "SF-Pro-Display-Regular"
        
        var name: String {
            return self.rawValue
        }
    }
}
