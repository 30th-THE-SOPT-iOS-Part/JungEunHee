//
//  Reusable.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/05/25.
//

import Foundation

protocol Reusable: AnyObject {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
