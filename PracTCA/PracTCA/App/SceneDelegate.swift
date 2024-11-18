//
//  SceneDelegate.swift
//  PracTCA
//
//  Created by James on 11/18/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(
        _ scene: UIScene, willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let scene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: scene)
        window.rootViewController = UINavigationController(rootViewController: HomeViewController())
        window.backgroundColor = .blue
        window.makeKeyAndVisible()
        
        self.window = window
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        print("test")
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        print("test")
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        print("test")
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        print("test")
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        print("test")
    }
    
}
