//
//  DelegatePracticeViewController.swift
//  Third_Seminar
//
//  Created by 정은희 on 2022/04/23.
//

import UIKit

protocol SecondViewControllerDelegate {
    func sendData(data: String) // 데이터를 넘기는 함수 (FirstVC에서 구현할 것)
}

final class DelegatePracticeViewController: UIViewController {
    
    // MARK: - Properties
    var delegate: SecondViewControllerDelegate? // 프로토콜의 대리자

    // MARK: - @IBOutlet Properties
    @IBOutlet weak var dataTextField: UITextField!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataTextField.delegate = self
    }
    
    // MARK: - @IBAction Properties
    @IBAction func sendDataButtonDidTapped(_ sender: UIButton) {
        // 버튼을 클릭했을 때 데이터를 넘겨주는 함수
        if let text = dataTextField.text {
            // 프로토콜 안에 선언된 메서드에 데이터를 담아줌
            delegate?.sendData(data: text)
        }
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - Extensions
extension DelegatePracticeViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // 텍스트 필드를 터치하고 편집이 시작될 때 실행되는 함수
        print("텍스트 필드의 편집이 시작되었씁니다!!")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 텍스트 필드 편집 중 키보드에서 return 키를 눌렀을 때 실행되는 함수
        print("Return 버튼이 눌렸어요!")
        dataTextField.endEditing(true)  // endEditing(_ force: ) → 텍스트 필드의 편집을 끝내주는 함수
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // 텍스트 필드의 편집을 끝낼 때 실행되는 함수
        print("텍스트 필드의 편집이 끝났습니다~!")
    }
}
