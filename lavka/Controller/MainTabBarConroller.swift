//
//  MainTabBarConroller.swift
//  lavka
//
//  Created by Владислав on 07.07.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import UIKit

class MainTabBarConroller: UITabBarController {

    @IBOutlet weak var MainTabBar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        MainTabBar.overrideUserInterfaceStyle = .dark
    }
    


}
