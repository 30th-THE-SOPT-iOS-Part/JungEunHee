//
//  WelcomeViewController.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/06.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - Properties
    private let welcomeView = WelcomeView()

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func loadView() {
        view = welcomeView
    }
}
