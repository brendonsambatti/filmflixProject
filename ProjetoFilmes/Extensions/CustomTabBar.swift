//
//  CustomTabBar.swift
//  ProjetoFilmes
//
//  Created by info 0033 on 13/06/22.
//

import UIKit

class CustomTabBar: UITabBar, UITabBarDelegate {
    
    func tabBar(_ tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem]) {
        tabBar.layer.borderColor = UIColor.white.cgColor
        tabBar.layer.borderWidth = 0.4
        tabBar.backgroundColor = UIColor.black
    }
}
