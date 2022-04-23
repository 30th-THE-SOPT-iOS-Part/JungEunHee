//
//  FirstViewController.swift
//  Third_Seminar
//
//  Created by 정은희 on 2022/04/23.
//

import UIKit

final class FirstViewController: UIViewController {
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var dataLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - @IBAction Properties
    @IBAction func nextButtonDidTapped(_ sender: UIButton) {
        guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "DelegatePracticeView") as? DelegatePracticeViewController else { return }
        
        secondVC.delegate = self // secondVC의 대리자로 자신(= FirstVC)을 위임
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

extension FirstViewController: SecondViewControllerDelegate {
    func sendData(data: String) {
        dataLabel.text = data   // 넘겨 받은 데이터를 dataLabel에 표시함
    }
}
