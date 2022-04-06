//
//  SignUpFirstViewController.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/06.
//

import UIKit

final class SignUpFirstViewController: BaseViewController {
    
    // MARK: - Properties
    var userName: String = ""
    
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
        
        reusableView.titleLabel.text = "사용자 이름 만들기"
        reusableView.descriptionLabel.text = """
        새 계정에 사용할 사용자 이름을 선택하세요. 나중에
        언제든지 변경할 수 있습니다.
        """
        reusableView.inputTextField.placeholder = "사용자 이름"
    }
    
    private func assignDelegation() {
        reusableView.delegate = self
    }
}

extension SignUpFirstViewController: SignUpViewDelegate {
    func nextButtonClicked() {
    }
}
