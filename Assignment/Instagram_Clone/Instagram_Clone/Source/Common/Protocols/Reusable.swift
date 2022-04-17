//
//  Reusable.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import Foundation

public protocol Reusable: AnyObject {
    // set
    static var reuseIdentifier: String { get }
}

public extension Reusable {
    // return
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
