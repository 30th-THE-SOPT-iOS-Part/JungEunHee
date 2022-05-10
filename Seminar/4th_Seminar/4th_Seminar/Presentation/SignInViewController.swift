//
//  SignInViewController.swift
//  4th_Seminar
//
//  Created by 정은희 on 2022/05/07.
//

import UIKit

final class SignInViewController: UIViewController {
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - @IBAction Properties
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        login()
    }
}

extension SignInViewController {
    private func login() {
        guard let name = nameTextField.text,
              let email = emailTextField.text,
              let password = passwordTextField.text
        else { return }
        
        UserService.shared.login(name: name,
                                 email: email,
                                 password: password) { response in
            switch response {
            case .success(let data):
                guard let data = data as? LoginResponse else { return }
                print(data)
                print("로그인 성공!")
            default:
                return
            }
        }
    }
}
