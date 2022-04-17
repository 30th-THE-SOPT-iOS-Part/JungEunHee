//
//  SignUpView.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/05.
//

import UIKit

protocol SignUpViewDelegate {
    func nextButtonClicked()
    func dismissButtonClicked()
}

class SignUpView: UIView {
    
    // MARK: - Properties
    public var delegate: SignUpViewDelegate?
    
    // MARK: - @IBOutlet Properties
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
    
    // MARK: - @IBAction Properties
    @IBAction func touchUpToBackButton(_ sender: UIButton) {
        if let delegate = delegate {
            delegate.dismissButtonClicked()
        }
    }
    @IBAction func touchUpToNextButton(_ sender: UIButton) {
        if let delegate = delegate {
            delegate.nextButtonClicked()
        }
    }
}
