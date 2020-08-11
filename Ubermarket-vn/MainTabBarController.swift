//
//  ViewController.swift
//  tab-experiment
//
//  Created by bqle on 7/28/20.
//  Copyright © 2020 bqle. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    fileprivate let kBarHeight: CGFloat = 180
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tabBar.barTintColor = UIColor(red: 38/255, green: 196/255, blue: 133/255, alpha: 1)
        tabBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tabBar.contentMode = .scaleAspectFit
        
        setupTabBar()
        
        
    }
    
    func setupTabBar() {
        let calendarController = createNavController(vc: CalendarViewController(), selectedImage: #imageLiteral(resourceName: "icons8-calendar-29"), unselectedImage: #imageLiteral(resourceName: "icons8-calendar-29"))
        let foodController = createNavController(vc: FoodViewController(), selectedImage: #imageLiteral(resourceName: "icons8-food-29"), unselectedImage: #imageLiteral(resourceName: "icons8-food-29"))
        
        viewControllers = [foodController, calendarController]
        
        guard let items = tabBar.items else {return}
        
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -20, right: 0)
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }


}

extension UITabBarController{
    func createNavController(vc: UIViewController, selectedImage: UIImage, unselectedImage: UIImage) -> UINavigationController{
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselectedImage

        navController.tabBarItem.selectedImage = selectedImage
        return navController
        
    }
}

