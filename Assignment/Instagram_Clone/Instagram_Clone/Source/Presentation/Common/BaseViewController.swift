//
//  BaseViewController.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit

class BaseViewController: UIViewController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setHierarchy()
        setLayout()
        setNavigation()
        setTargets()
    }
    
    // MARK: - Functions
    public func setHierarchy() { }
    public func setLayout() { }
    public func setNavigation() { }
    public func setTargets() { }
}
