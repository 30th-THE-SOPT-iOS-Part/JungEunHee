//
//  SignInView.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit

import SnapKit
import Then

class SignInView: UIView {
    
    // MARK: - Properties
    private let logoImageView = UIImageView().then {
        $0.contentMode = .scaleAspectFit
        $0.image = Const.Image.icInstagramBlackLogo
    }
    private let idTextField = UITextField().then {
        $0.backgroundColor = Const.Color.lightGray
        $0.borderStyle = .roundedRect
        $0.setLeftPadding(amount: 10)
        $0.setRightPadding(amount: 10)
    }
    private let passwordTextField = UITextField().then {
        $0.backgroundColor = Const.Color.lightGray
        $0.borderStyle = .roundedRect
        $0.setLeftPadding(amount: 10)
        $0.setRightPadding(amount: 10)
    }
    private let hideImageView = UIImageView().then {
        $0.contentMode = .scaleAspectFit
        $0.image = Const.Image.icPasswordHiddenEye
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
    private let signInButton = BlueButton.init(frame: CGRect(), text: "로그인", fontSize: 10)
    private let authHelpLabel = UILabel().then {
        $0.font = UIFont(name: Const.Font.SFProDisplayMedium.rawValue, size: 10)
        $0.sizeToFit()
        $0.text = "계정이 없으신가요?"
        $0.textColor = UIColor(cgColor: Const.Color.darkGray.cgColor)
    }
    private let signUpLabel = UILabel().then {
        $0.font = UIFont(name: Const.Font.SFProDisplayMedium.rawValue, size: 10)
        $0.sizeToFit()
        $0.text = "가입하기"
        $0.textColor = UIColor(cgColor: Const.Color.blue.cgColor)
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
        [logoImageView, inputStackView, hideImageView, passwordHelpLabel, signInButton, signUpHelpStack].forEach {
            addSubview($0)
        }
        inputStackView.addArrangedSubviews(idTextField, passwordTextField)
        signUpHelpStack.addArrangedSubviews(authHelpLabel, signUpLabel)
        self.backgroundColor = Const.Color.white
    }
    
    private func setConstraints() {
        logoImageView.snp.makeConstraints {
            $0.width.equalTo(170)
            $0.height.equalTo(45)
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(150)
            $0.leading.equalToSuperview().offset(100)
        }
        // MARK: - 과제
        // 🍋 심화과제 1-1. 눈 모양 아이콘 UI 구성
        hideImageView.snp.makeConstraints {
            $0.width.height.equalTo(25)
            $0.centerY.equalTo(passwordTextField)
            $0.bottom.trailing.equalTo(inputStackView).inset(12)
        }
        idTextField.snp.makeConstraints {
            $0.height.equalTo(55)
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
            $0.width.equalTo(UIScreen.main.bounds.width - 200)
            $0.height.equalTo(30)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(signInButton.snp.bottom).offset(40)
            $0.leading.equalToSuperview().offset(90)
        }
    }
}
