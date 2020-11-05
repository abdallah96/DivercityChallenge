//
//  AppDelegate.swift
//  Divercity
//
//  Created by Abdallah Gueye on 04/11/2020.
//

import UIKit
import Firebase
import GoogleSignIn

@main
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {

    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        GIDSignIn.sharedInstance()?.delegate = self
        GIDSignIn.sharedInstance()?.clientID = "589041063466-66vhqeeeaifc69g03nbpts9rh3d0e86q.apps.googleusercontent.com"
        return true
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        print("Google Sheet API Not found")
    }
    @available(iOS 9.0, *)
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance().handle(url)
    }
    
//    extension GoogleService: GIDSignInDelegate {
//
//        func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
//
//            if let error = error {
//                if(error as NSError).code == GIDSignInErrorCode.hasNoAuthInKeychain.rawValue{
//
//                    print("new our sign out user")
//                }
//                else{
//                    print(error.localizedDescription)
//                }
//                return
//            }
//
//        }
//    }
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

