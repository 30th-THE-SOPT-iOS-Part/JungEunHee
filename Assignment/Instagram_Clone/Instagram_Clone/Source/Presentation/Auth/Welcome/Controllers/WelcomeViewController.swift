//
//  WelcomeViewController.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/06.
//

import UIKit

final class WelcomeViewController: BaseViewController {
    
    // MARK: - Properties
    private let welcomeView = WelcomeView()

    // MARK: - View Life Cycle
    override func loadView() {
        view = welcomeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUserName()
    }
    
    // MARK: - Functions
    override func setTargets() {
        welcomeView.doneButton.addTarget(self, action: #selector(addPresentation), for: .touchUpInside)
        welcomeView.anotherLoginButton.addTarget(self, action: #selector(addDissmiss), for: .touchUpInside)
    }
}

// MARK: - Extensions
extension WelcomeViewController {
    @objc
    private func addPresentation() {
        let mainVC = TabBarController.instanceFromNib()
        mainVC.modalTransitionStyle = .crossDissolve
        mainVC.modalPresentationStyle = .fullScreen
        self.present(mainVC, animated: true) {
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
    
    @objc
    private func addDissmiss() {
        self.dismiss(animated: true) {
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
    
    private func setUserName() {
        if let userName = UserDefaults.standard.string(forKey: "userName") {
            welcomeView.welcomeLabel.text = """
            \(userName)님 Instagram에
            오신 것을 환영합니다
            """
        }
    }
}
