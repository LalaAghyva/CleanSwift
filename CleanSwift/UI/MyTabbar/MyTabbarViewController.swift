//
//  MyTabbarViewController.swift
//  CleanSwift
//
//  Created by Lala on 06.03.24.
//

import UIKit

class MyTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func createViewControllers() {
        let productImage = UIImage(systemName:  "house.fill")
        let productList = ViewControllerFactory.shared.makeProductListController()
        let tabBarItem = UITabBarItem(title: "Products", image: productImage, selectedImage: productImage)
        productList.tabBarItem = tabBarItem
        
        let favImage = UIImage(systemName:  "heart.fill")
        let favList = ViewControllerFactory.shared.makeFavoriteController()
        let favTabBarItem = UITabBarItem(title: "Favorites", image: favImage, selectedImage: favImage)
        favList.tabBarItem = favTabBarItem
        
        let basketImage = UIImage(systemName:  "basket.fill")
        let basketList = ViewControllerFactory.shared.makeBasketController()
        let basketTabBarItem = UITabBarItem(title: "Basket", image: basketImage, selectedImage: basketImage)
        basketList.tabBarItem = basketTabBarItem
        
        let controllers = [productList, favList, basketList]
        self.viewControllers = controllers.map { UINavigationController(rootViewController: $0) }
        
    }

}
