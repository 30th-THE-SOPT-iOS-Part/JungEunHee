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
        /*
         instanceFromNib() 메서드를 사용하지 않은 이유
          - SignUpView라는 클래스에 xib를 넣어주기 위함 (나중에 초기화할때 UIView로 불러올 수 있도록)
          - 가장 root에 있는 UIView를 가져올 것이기 때문에 .first 붙여줌
         */
        guard let signUpView = UINib(nibName: "SignUpView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else { return }
        
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
