//
//  WelcomeView.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/06.
//

import UIKit

import SnapKit
import Then

final class WelcomeView: BaseView {

    // MARK: - Properties
    let welcomeLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 24)
        $0.numberOfLines = 0
        $0.sizeToFit()
        $0.text = "000님 Instagram에\n오신 것을 환영합니다"
        $0.textAlignment = .center
    }
    private lazy var descriptionLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.sizeToFit()
        $0.text = "언제든지 연락처 정보와 사용자 이름을 변경할 수 있습니다."
        $0.textAlignment = .center
        $0.textColor = Const.Color.darkGray
    }
    let doneButton = BlueButton(frame: CGRect(), text: "완료하기", fontSize: 10).then {
        $0.backgroundColor = Const.Color.blue
    }
    let anotherLoginButton = UIButton().then {
        $0.contentMode = .scaleAspectFit
        $0.setTitle("다른 계정으로 로그인하기", for: .normal)
        $0.setTitleColor(Const.Color.blue, for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 14)
    }
    
    // MARK: - Functions
    override func setupViews() {
        addSubviews(welcomeLabel, descriptionLabel, doneButton, anotherLoginButton)
    }
    
    override func setupConstraints() {
        welcomeLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(310)
        }
        descriptionLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(welcomeLabel.snp.bottom).inset(-23)
        }
        doneButton.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width - 38)
            $0.height.equalTo(40)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(descriptionLabel.snp.bottom).inset(-23)
        }
        anotherLoginButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(doneButton.snp.bottom).inset(-18)
        }
    }
}
