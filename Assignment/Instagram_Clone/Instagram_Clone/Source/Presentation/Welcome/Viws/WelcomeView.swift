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
    private let welcomeLabel = UILabel().then {
        $0.font = UIFont(name: Const.Font.SFProDisplayBold.rawValue, size: 30)
        $0.sizeToFit()
        $0.text = "000님 Instagram에\n오신 것을 환영합니다"
        $0.textAlignment = .center
    }
    private let descriptionLabel = UILabel().then {
        $0.font = UIFont(name: Const.Font.SFProDisplayRegular.rawValue, size: 10)
        $0.sizeToFit()
        $0.text = "언제든지 연락처 정보와 사용자 이름을 변경할 수 있습니다."
    }
    private let doneButton = BlueButton(frame: CGRect(), text: "완료하기", fontSize: 10)
    private let welcomeStackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 20
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
        addSubview(welcomeStackView)
        welcomeStackView.addArrangedSubviews(welcomeLabel, descriptionLabel, doneButton)
    }
    
    private func setConstraints() {
        welcomeStackView.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width - 20)
            $0.height.equalTo(120)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(safeAreaLayoutGuide).offset(120)
        }
    }
}
