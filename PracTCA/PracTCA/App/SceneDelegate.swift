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
        Logger.log(tag: .lifecycle)
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        window.rootViewController = UINavigationController(
            rootViewController: HomeViewController())
        window.backgroundColor = .blue
        window.makeKeyAndVisible()
        
        self.window = window
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        Logger.log(tag: .lifecycle)
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        Logger.log(tag: .lifecycle)
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        Logger.log(tag: .lifecycle)
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        Logger.log(tag: .lifecycle)
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        Logger.log(tag: .lifecycle)
    }
    
}
