//
//  SecondViewController.swift
//  First_Seminar
//
//  Created by 정은희 on 2022/04/02.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var dataLabel: UILabel!
    
    // MARK: - Properties
    var message: String?    // IBOutlet에는 값을 직접 대입할 수 없기 때문에, 프로퍼티를 만들어 받아준다
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        // 뷰 컨트롤러가 처음 메모리에 로드 됐을 때 실행되는 함수
        super.viewDidLoad()
        
        setMessage()
    }
    
    // MARK: - @IBAction Properties
    @IBAction func backButtonDidTap(_ sender: UIButton) {
        /*
         present - dismiss  : modal
         push - pop         : navigation
         */
        
        // 1-1. modal 뒤로 가기
        self.dismiss(animated: true)
        // dismiss -> 현재 present로 띄워진 뷰를 사라지게 하는 메서드
        
        // 1-2. navigation 뒤로 가기
//        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Functions
    private func setMessage() {
        if let message = message {  // 옵셔널 바인딩으로 안전하게 값을 꺼냄
            dataLabel.text = message
            dataLabel.sizeToFit()
        }
    }
}
