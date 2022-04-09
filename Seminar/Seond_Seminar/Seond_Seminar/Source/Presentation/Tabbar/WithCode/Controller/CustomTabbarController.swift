//
//  CustomTabbarController.swift
//  Seond_Seminar
//
//  Created by 정은희 on 2022/04/09.
//

import UIKit

class CustomTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabbarController()
    }
    
    // MARK: - Functions
    // 탭 바 컨트롤러 세팅.
    func setTabbarController() {

        // 1. 뷰 컨트롤러의 인스턴스 생성
        /*
         - 스토리보드 상에 있는 뷰 컨트롤러를 guard-let 구문을 통해 안전하게 가져와서 인스턴스화
         - 사용할 화면 (= 연결할 화면)을 가져오는 것 !
         */
        guard let firstViewController = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController"),
              let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        else { return }
        
        // 2. 탭 바 아이템 설정
        firstViewController.tabBarItem = UITabBarItem(
            title: "First Tab",
            image: UIImage(systemName: "house"),    // 시스템 이미지로 아이템 설정
            selectedImage: UIImage(systemName: "house.fill")
        )
        secondViewController.tabBarItem = UITabBarItem(
            title: "Second Tab",
            image: UIImage(named: "Home"),  // 따로 추가한 에셋으로 아이템 설정
            selectedImage: UIImage(systemName: "Home-1")
        )
        
        // 3. 설정한 화면을 탭 바 컨트롤러에 연결
        /*
         - 넣어줄 뷰 컨트롤러들을 배열의 형태로 넣어줌 !
         - 연결하는 작업이기 때문에 애니메이션 효과는 잘 사용하지 않음
         */
        setViewControllers([firstViewController, secondViewController], animated: true)
    }
}
