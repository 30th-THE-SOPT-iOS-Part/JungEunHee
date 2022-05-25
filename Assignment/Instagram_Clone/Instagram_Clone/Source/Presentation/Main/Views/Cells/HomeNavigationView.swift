//
//  HomeNavigationView.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/05/10.
//

import UIKit

final class HomeNavigationView: UIView {
    
    // MARK: - Initialization
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        commonInit()
    }
    
    // MARK: - Functions
    private func commonInit() {
        guard let homeNavigationView = UINib(nibName: "HomeNavigationView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else { return }
        
        homeNavigationView.frame = self.bounds
        self.addSubview(homeNavigationView)
    }
}
