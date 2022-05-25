//
//  SignInView.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit

import SnapKit
import Then

final class SignInView: BaseView {
    
    // MARK: - Properties
    private lazy var logoImageView = UIImageView().then {
        $0.contentMode = .scaleAspectFit
        $0.image = Const.Image.icnInstagramBlackLogo
    }
    let idTextField = UITextField().then {
        $0.autocapitalizationType = .none
        $0.autocorrectionType = .no
        $0.backgroundColor = Const.Color.lightGray
        $0.borderStyle = .roundedRect
        $0.clearButtonMode = .whileEditing
        $0.setLeftPadding(amount: 10)
        $0.spellCheckingType = .no
        $0.placeholder = "전화번호, 사용자 이름 또는 이메일"
    }
    let passwordTextField = UITextField().then {
        $0.autocapitalizationType = .none
        $0.autocorrectionType = .no
        $0.backgroundColor = Const.Color.lightGray
        $0.borderStyle = .roundedRect
        $0.isSecureTextEntry = true
        $0.setLeftPadding(amount: 10)
        $0.setRightPadding(amount: 30)
        $0.spellCheckingType = .no
        $0.placeholder = "비밀번호"
    }
    let hideButton = UIButton().then {
        $0.contentMode = .scaleAspectFit
        $0.setImage(Const.Image.icnPasswordHiddenEye, for: .normal)
    }
    private lazy var passwordHelpLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 10)
        $0.text = "비밀번호를 잊으셨나요?"
        $0.textAlignment = .left
        $0.textColor = UIColor(cgColor: Const.Color.blue.cgColor)
    }
    private lazy var inputStackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.spacing = 16
    }
    let signInButton = BlueButton.init(frame: CGRect(), text: "로그인", fontSize: 10).then {
        $0.isEnabled = false
    }
    private lazy var authHelpLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 14)
        $0.text = "계정이 없으신가요?"
        $0.sizeToFit()
        $0.textAlignment = .center
        $0.textColor = UIColor(cgColor: Const.Color.darkGray.cgColor)
    }
    let signUpButton = UIButton().then {
        $0.setTitle("가입하기", for: .normal)
        $0.setTitleColor(UIColor(cgColor: Const.Color.blue.cgColor), for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 14)
    }
    private lazy var signUpHelpStack = UIStackView().then {
        $0.axis = .horizontal
        $0.distribution = .fillProportionally
        $0.spacing = 5
    }
    
    // MARK: - Functions
    override func setupViews() {
       addSubviews(logoImageView, inputStackView, hideButton, signInButton, signUpHelpStack)
        inputStackView.addArrangedSubviews(idTextField, passwordTextField, passwordHelpLabel)
        signUpHelpStack.addArrangedSubviews(authHelpLabel, signUpButton)
    }
    
    override func setupConstraints() {
        logoImageView.snp.makeConstraints {
            $0.width.equalTo(175)
            $0.height.equalTo(45)
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(170)
        }
        hideButton.snp.makeConstraints {
            $0.width.height.equalTo(25)
            $0.centerY.equalTo(passwordTextField)
            $0.bottom.trailing.equalTo(inputStackView).inset(12)
        }
        idTextField.snp.makeConstraints {
            $0.height.equalTo(44)
        }
        passwordHelpLabel.snp.makeConstraints {
            $0.top.equalTo(inputStackView.snp.top).offset(108)
        }
        inputStackView.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width - 16)
            $0.height.equalTo(104)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(logoImageView.snp.bottom).offset(33.42)
        }
        signInButton.snp.makeConstraints {
            $0.width.equalTo(343)
            $0.height.equalTo(44)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(passwordHelpLabel.snp.bottom).offset(34)
        }
        signUpHelpStack.snp.makeConstraints {
            $0.height.equalTo(17)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(signInButton.snp.bottom).offset(37.5)
        }
    }
}
