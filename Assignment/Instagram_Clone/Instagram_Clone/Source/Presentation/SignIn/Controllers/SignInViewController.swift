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
    override func loadView() {
        view = signInView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    override func setTargets() {
        super.setTargets()
        
        [signInView.signUpButton, signInView.idTextField, signInView.passwordTextField].forEach {
            $0.addTarget(self, action: #selector(textFieldDidChanged(_:)), for: .editingChanged)
        }
        signInView.signInButton.addTarget(self, action: #selector(signInButtonClicked), for: .touchUpInside)
        signInView.signUpButton.addTarget(self, action: #selector(signUpButtonClicked), for: .touchUpInside)
        [signInView.passwordTextField, signInView.hideButton].forEach {
            $0.addTarget(self, action: #selector(hideButtonClicked), for: .touchUpInside)
        }
    }
    
    @objc
    private func textFieldDidChanged(_ textField: UITextField) {
        signInView.signUpButton.isEnabled = [signInView.idTextField, signInView.passwordTextField].allSatisfy { $0.hasText }
    }
    
    @objc
    private func signInButtonClicked() {
        let nextVC = WelcomeViewController.instanceFromNib()
        nextVC.userName = signInView.idTextField.text
        nextVC.modalTransitionStyle = .crossDissolve
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true)
    }
    
    @objc
    private func signUpButtonClicked() {
        let nextVC = SignUpFirstViewController.instanceFromNib()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc
    private func hideButtonClicked() {
        signInView.passwordTextField.isSecureTextEntry ?
        signInView.hideButton.setImage(Const.Image.icPasswordShownEye, for: .normal) :
        signInView.hideButton.setImage(Const.Image.icPasswordHiddenEye, for: .normal)
        signInView.passwordTextField.isSecureTextEntry = !(signInView.passwordTextField.isSecureTextEntry)
    }
}
