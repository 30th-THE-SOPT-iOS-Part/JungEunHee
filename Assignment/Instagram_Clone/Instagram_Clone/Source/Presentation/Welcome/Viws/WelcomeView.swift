//
//  WelcomeView.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/06.
//

import UIKit

import SnapKit
import Then

final class WelcomeView: UIView {

    // MARK: - Properties
    public let welcomeLabel = UILabel().then {
        $0.adjustsFontSizeToFitWidth = true
        $0.font = UIFont(name: Const.Font.SFProDisplayBold.rawValue, size: 20)
        $0.numberOfLines = 0
        $0.text = "000님 Instagram에\n오신 것을 환영합니다"
        $0.textAlignment = .center
    }
    private let descriptionLabel = UILabel().then {
        $0.adjustsFontSizeToFitWidth = true
        $0.font = UIFont(name: Const.Font.SFProDisplayRegular.rawValue, size: 10)
        $0.text = "언제든지 연락처 정보와 사용자 이름을 변경할 수 있습니다."
        $0.textColor = Const.Color.darkGray
    }
    public let doneButton = BlueButton(frame: CGRect(), text: "완료하기", fontSize: 10)
    
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
        [welcomeLabel, descriptionLabel, doneButton].forEach {
            addSubview($0)
        }
    }
    
    private func setConstraints() {
        welcomeLabel.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width - 40)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(safeAreaLayoutGuide).offset(200)
        }
        descriptionLabel.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width - 25)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(welcomeLabel.snp.bottom).inset(-20)
        }
        doneButton.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width - 20)
            $0.height.equalTo(45)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(descriptionLabel.snp.bottom).inset(-20)
        }
    }
}
