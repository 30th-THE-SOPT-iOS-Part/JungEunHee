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
        $0.image = Const.Image.icInstagramBlackLogo
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
        $0.setImage(Const.Image.icPasswordHiddenEye, for: .normal)
        $0.tintColor = Const.Color.lightGray
    }
    private let inputStackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.spacing = 5
    }
    private let passwordHelpLabel = UILabel().then {
        $0.font = UIFont(name: Const.Font.SFProDisplayMedium.rawValue, size: 8)
        $0.text = "비밀번호를 잊으셨나요?"
        $0.textAlignment = .right
        $0.textColor = UIColor(cgColor: Const.Color.blue.cgColor)
    }
    public let signInButton = BlueButton.init(frame: CGRect(), text: "로그인", fontSize: 10).then {
        $0.isEnabled = false
    }
    private let authHelpLabel = UILabel().then {
        $0.font = UIFont(name: Const.Font.SFProDisplayMedium.rawValue, size: 10)
        $0.sizeToFit()
        $0.text = "계정이 없으신가요?"
        $0.textColor = UIColor(cgColor: Const.Color.darkGray.cgColor)
    }
    public let signUpButton = UIButton().then {
        $0.setTitle("가입하기", for: .normal)
        $0.setTitleColor(UIColor(cgColor: Const.Color.blue.cgColor), for: .normal)
    }
    private let signUpHelpStack = UIStackView().then {
        $0.axis = .horizontal
        $0.distribution = .fill
        $0.spacing = 5
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
            $0.width.equalTo(170)
            $0.height.equalTo(45)
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(150)
            $0.leading.equalToSuperview().offset(100)
        }
        hideButton.snp.makeConstraints {
            $0.width.height.equalTo(25)
            $0.centerY.equalTo(passwordTextField)
            $0.bottom.trailing.equalTo(inputStackView).inset(12)
        }
        inputStackView.snp.makeConstraints {
            $0.width.equalTo(335)
            $0.height.equalTo(110)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(logoImageView.snp.bottom).offset(40)
            $0.leading.equalToSuperview().offset(20)
        }
        passwordHelpLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(365)
            $0.trailing.equalToSuperview().offset(-20)
        }
        signInButton.snp.makeConstraints {
            $0.width.equalTo(355)
            $0.height.equalTo(55)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(passwordHelpLabel.snp.bottom).offset(40)
            $0.leading.equalToSuperview().offset(20)
        }
        signUpHelpStack.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width - 220)
            $0.height.equalTo(30)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(signInButton.snp.bottom).offset(40)
            $0.leading.equalToSuperview().offset(85)
        }
    }
}
