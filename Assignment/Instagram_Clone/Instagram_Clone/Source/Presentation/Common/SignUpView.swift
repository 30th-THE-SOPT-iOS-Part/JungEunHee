//
//  SignUpView.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/05.
//

import UIKit

class SignUpView: UIView {
    
    // MARK: - @IBOutlet Properties
    var delegate: SignUpViewDelegate?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    // MARK: - Initialization
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    // MARK: - Functions
    private func commonInit() {
        let signUpView = SignUpView.instanceFromNib()
        signUpView.frame = self.bounds
        self.addSubview(signUpView)
    }
    
}
