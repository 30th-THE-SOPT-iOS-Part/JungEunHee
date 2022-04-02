//
//  ViewController.swift
//  First_Seminar
//
//  Created by 정은희 on 2022/04/02.
//

import UIKit
import AVFoundation

final class ViewController: UIViewController {

    // MARK: - @IBOutlet Properties
    @IBOutlet weak var messageLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = "도착한 메시지가 없어요!"
    }
    
    // MARK: - @IBAction Properties
    @IBAction func doneButtonDidTap(_ sender: UIButton) {
        messageLabel.text = "새로운 메시지가 도착했어요!"
        messageLabel.textColor = .green
        messageLabel.sizeToFit()
        AudioServicesPlayAlertSound(SystemSoundID(1307))
    }
}

