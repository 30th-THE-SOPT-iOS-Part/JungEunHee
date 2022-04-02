//
//  FirstViewController.swift
//  First_Seminar
//
//  Created by 정은희 on 2022/04/02.
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: - @IBOutlet Properties
    @IBOutlet weak var dataTextField: UITextField!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - @IBAction Properties
    @IBAction func goToSecondVC(_ sender: UIButton) {
        // 1. 이동하고자 하는 화면의 인스턴스를 가져옴
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        // SecondViewController에 만들어진 프로퍼티를 가져와 사용하기 위해서는 타입 캐스팅이 필요하다.
        // (= 표현을 명시해줘야 한다)
        
        // 화면 전달 시 변수에 데이터를 담아 보내줌
        nextVC.message = dataTextField.text
        
        // 2-1. 코드를 이용한 화면 전환 (modal 방식, 덮어짐)
//        nextVC.modalTransitionStyle = .crossDissolve
//        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true)
        
        // 2-2. 코드를 이용한 화면 전환 (navigation push 방식, 오른쪽으로 이동함)
//        self.navigationController?.pushViewController(nextVC, animated: true)
        // navigation 화면 전환은 navigationController가 관리
    }
}
