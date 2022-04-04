//
//  SceneDelegate.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/04.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        window?.windowScene = windowScene
        
        let viewController = UIViewController(nibName: "ViewController", bundle: nil)
        let rootViewController = UINavigationController(rootViewController: viewController)
        
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
}
