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

        viewHierarchy()
        setNavigation()
    }
    
    // MARK: - Functions
    public func viewHierarchy() { }
    public func setNavigation() { }
}
