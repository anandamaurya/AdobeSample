//
//  SSAppCoordinator.swift
//  SafeShowings
//
//  Created by rohit sisodia on 31/07/19.
//  Copyright © 2019 Kiwitech. All rights reserved.
//

import Foundation
import UIKit
import SideMenu

/// Create a initial Controller for the app. This class can also change App Flow acording to diffrent conditions.
@objc class ADBSideMenu: NSObject {
    var sideMenu: UISideMenuNavigationController!
    @objc func sideMenuNavController() -> UISideMenuNavigationController {
        if sideMenu == nil {
            configureSideMenu()
        }
        return sideMenu
    }
    private func configureSideMenu() {
        let storyboard = UIStoryboard(name: "SideMenu", bundle: nil)
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "ABDSideMenuTableViewController")
        sideMenu = UISideMenuNavigationController(rootViewController: rootViewController)
        sideMenu?.leftSide = true
        sideMenu?.statusBarEndAlpha = 0
        //sideMenu?.navigationBar.isHidden = true
    }
}
