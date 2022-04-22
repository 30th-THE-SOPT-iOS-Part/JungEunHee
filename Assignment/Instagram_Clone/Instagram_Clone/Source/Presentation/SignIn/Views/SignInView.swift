//
//  SignInView.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit

import SnapKit
import Then

final class SignInView: UIView {
    
    // MARK: - Properties
    private let logoImageView = UIImageView().then {
        $0.contentMode = .scaleAspectFit
        $0.image = Const.Image.icnInstagramBlackLogo
    }
    public let idTextField = UITextField().then {
        $0.autocapitalizationType = .none
        $0.autocorrectionType = .no
        $0.backgroundColor = Const.Color.lightGray
        $0.borderStyle = .roundedRect
        $0.clearButtonMode = .whileEditing
        $0.setLeftPadding(amount: 10)
        $0.spellCheckingType = .no
        $0.placeholder = "전화번호, 사용자 이름 또는 이메일"
    }
    public let passwordTextField = UITextField().then {
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
    public let hideButton = UIButton().then {
        $0.contentMode = .scaleAspectFit
        $0.setImage(Const.Image.icnPasswordHiddenEye, for: .normal)
    }
    private let inputStackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.spacing = 16
    }
    private let passwordHelpLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 10)
        $0.text = "비밀번호를 잊으셨나요?"
        $0.textAlignment = .left
        $0.textColor = UIColor(cgColor: Const.Color.blue.cgColor)
    }
    public let signInButton = BlueButton.init(frame: CGRect(), text: "로그인", fontSize: 10).then {
        $0.isEnabled = false
    }
    private let authHelpLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 14)
        $0.sizeToFit()
        $0.text = "계정이 없으신가요?"
        $0.textAlignment = .center
        $0.textColor = UIColor(cgColor: Const.Color.darkGray.cgColor)
    }
    public let signUpButton = UIButton().then {
        $0.setTitle("가입하기", for: .normal)
        $0.setTitleColor(UIColor(cgColor: Const.Color.blue.cgColor), for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 14)
    }
    private let signUpHelpStack = UIStackView().then {
        $0.axis = .horizontal
        $0.distribution = .fill
        $0.spacing = 0
    }
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
        setConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Functions
    private func setUI() {
       addSubviews(logoImageView, inputStackView, hideButton, passwordHelpLabel, signInButton, signUpHelpStack)
        inputStackView.addArrangedSubviews(idTextField, passwordTextField)
        signUpHelpStack.addArrangedSubviews(authHelpLabel, signUpButton)
    }
    
    private func setConstraints() {
        logoImageView.snp.makeConstraints {
            $0.width.equalTo(175)
            $0.height.equalTo(45)
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(170)
            $0.leading.equalToSuperview().offset(100)
        }
        idTextField.snp.makeConstraints {
            $0.height.equalTo(44)
        }
        hideButton.snp.makeConstraints {
            $0.width.height.equalTo(25)
            $0.centerY.equalTo(passwordTextField)
            $0.bottom.trailing.equalTo(inputStackView).inset(12)
        }
        inputStackView.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width - 16)
            $0.height.equalTo(104)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(logoImageView.snp.bottom).offset(33.42)
            $0.leading.equalToSuperview().offset(16)
        }
        passwordHelpLabel.snp.makeConstraints {
            $0.top.equalTo(inputStackView.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(16)
        }
        signInButton.snp.makeConstraints {
            $0.width.equalTo(343)
            $0.height.equalTo(44)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(passwordHelpLabel.snp.bottom).offset(34)
            $0.leading.equalToSuperview().offset(16)
        }
        signUpButton.snp.makeConstraints {
            $0.width.equalTo(104)
        }
        signUpHelpStack.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width - 103)
            $0.height.equalTo(17)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(signInButton.snp.bottom).offset(37.5)
            $0.leading.equalToSuperview().offset(103)
        }
    }
}
