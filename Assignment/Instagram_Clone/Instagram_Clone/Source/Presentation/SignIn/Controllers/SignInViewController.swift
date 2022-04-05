//
//  SignInViewController.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit

final class SignInViewController: BaseViewController {
    
    // MARK: - Properties
    private let signInView = SignInView()

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func loadView() {
        view = signInView
    }
}
