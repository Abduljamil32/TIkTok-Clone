//
//  TabBarViewController.swift
//  TikTok
//
//  Created by Abduljamil SwiftCoder on 28/12/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpControllers()
    }
    

    private func setUpControllers(){
        
        let home = HomeViewController()
        let explore = ExploreViewController()
        let camera = CameraViewController()
        let notifications = NotificationsViewController()
        let profile = ProfileViewController()
        
        
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: explore)
        let nav3 = UINavigationController(rootViewController: notifications)
        let nav4 = UINavigationController(rootViewController: profile)
        let cameraNav = UINavigationController(rootViewController: camera)

        nav1.title = "House"
        nav2.title = "Explore"
        cameraNav.title = "Camera"
        nav3.title = "Notifications"
        nav4.title = "Profile"
        
//        nav1.navigationBar.backgroundColor = .clear
//        nav1.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        nav1.navigationBar.shadowImage = UIImage()
//
//        cameraNav.navigationBar.backgroundColor = .clear
//        cameraNav.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        cameraNav.navigationBar.shadowImage = UIImage()
//        cameraNav.navigationBar.tintColor = .white
//
//        nav3.navigationBar.tintColor = .label

        nav1.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "safari"), tag: 2)
        camera.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "camera"), tag: 3)
        nav3.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "bell"), tag: 4)
        nav4.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person.circle"), tag: 5)
        
        setViewControllers([nav1, nav2, cameraNav, nav3, nav4], animated: false)
        
    }

}
