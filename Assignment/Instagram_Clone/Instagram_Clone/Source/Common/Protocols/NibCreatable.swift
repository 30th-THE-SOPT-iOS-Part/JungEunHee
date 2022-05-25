//
//  NibCreatable.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit

protocol NibCreatable {
    // set
    static var nib: UINib { get }
    static var nibBundle: Bundle? { get }
    static var nibName: String { get }
    static func instanceFromNib() -> Self
}
