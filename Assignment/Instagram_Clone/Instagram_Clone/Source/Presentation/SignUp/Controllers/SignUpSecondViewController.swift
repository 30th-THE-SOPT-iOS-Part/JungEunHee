//
//  SignUpSecondViewController.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/06.
//

import UIKit

final class SignUpSecondViewController: BaseViewController {
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var reusableView: SignUpView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        assignDelegation()
    }
    
    // MARK: - Functions
    override func setLayout() {
        super.setLayout()
        
        reusableView.titleLabel.text = "비밀번호 만들기"
        reusableView.descriptionLabel.text = "비밀번호를 저장할 수 있으므로 iCloud 기기에서 로그인\n정보를 입력하지 않아도 됩니다."
        reusableView.inputTextField.placeholder = "비밀번호"
    }
    
    private func assignDelegation() {
        reusableView.delegate = self
    }
}

extension SignUpSecondViewController: SignUpViewDelegate {
    func nextButtonClicked() {
    }
}
