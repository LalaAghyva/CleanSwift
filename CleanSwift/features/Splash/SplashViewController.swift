//
//  SplashViewController.swift
//  CleanSwift
//
//  Created by Lala on 06.03.24.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func openMainForm(_ sender: Any) {
        let tabbarController = ViewControllerFactory.shared.makeMainTabbarBar()
        tabbarController.modalPresentationStyle = .fullScreen
        tabbarController.modalTransitionStyle = .flipHorizontal
        self.present(tabbarController, animated: true)
    }
    
}
