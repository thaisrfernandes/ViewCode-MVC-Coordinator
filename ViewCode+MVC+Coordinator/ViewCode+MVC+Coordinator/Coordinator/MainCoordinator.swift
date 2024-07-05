//
//  MainCoordinator.swift
//  ViewCode+MVC+Coordinator
//
//  Created by Thaís Fernandes on 04/07/24.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ListsViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToListDetails() {
        let vc = ListDetailViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
