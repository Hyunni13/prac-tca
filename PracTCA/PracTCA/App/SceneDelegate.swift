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
        guard let _ = (scene as? UIWindowScene) else { return }
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
