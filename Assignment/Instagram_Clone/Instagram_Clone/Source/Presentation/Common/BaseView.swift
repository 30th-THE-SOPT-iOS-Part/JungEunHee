//
//  BaseView.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/05/07.
//

import UIKit

class BaseView: UIView {
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Functions
    func setupViews() { }
    func setupConstraints() { }
}
