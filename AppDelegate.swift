//
//  AppDelegate.swift
//  Prototype
//
//  Created by Jayesh Wadhwani on 2016-06-13.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

import UIKit
import Material

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
//        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
//        self.window?.rootViewController = SideNavigationController(rootViewController:  UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ViewController"), leftViewController: NavigationViewController(), rightViewController: nil)
//        self.window?.makeKeyAndVisible()
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rootViewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        let sideViewController = storyboard.instantiateViewControllerWithIdentifier("LeftViewController") as! LeftViewController
        
        // Configure the window with the SideNavigationController as the root view controller
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = SideNavigationController(rootViewController: rootViewController, leftViewController: sideViewController)
        window?.makeKeyAndVisible()
        return true

        
        
        
        
        // Configure the window with the SideNavigationController as the root view controller
       
        
        
        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

