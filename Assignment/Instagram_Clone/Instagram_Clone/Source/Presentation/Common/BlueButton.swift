//
//  BlueButton.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/05.
//

import UIKit

import SnapKit

final class BlueButton: UIButton {
    
    // MARK: - Properties
    private var text: String
    
    // MARK: - Initialization
    init(frame: CGRect, text: String, fontSize: CGFloat) {
        self.text = text
        super.init(frame: frame)
    
        setUI(text: text, fontSize: Int(fontSize))
    }
    
    @available (*, unavailable)
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Functions
    private func setUI(text: String, fontSize: Int) {
        backgroundColor = Const.Color.blue
        makeRounded(radius: 8)
        setTitle(text, for: .normal)
        setTitleColor(Const.Color.white, for: .normal)
        titleLabel?.font = UIFont(name: Const.Font.SFProDisplayBold.rawValue, size: CGFloat(fontSize))
    }
}
