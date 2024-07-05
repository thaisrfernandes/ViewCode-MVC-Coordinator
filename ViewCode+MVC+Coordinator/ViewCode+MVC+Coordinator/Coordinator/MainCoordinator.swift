//
//  MainCoordinator.swift
//  ViewCode+MVC+Coordinator
//
//  Created by Thaís Fernandes on 04/07/24.
//

import UIKit

class MainCoordinator: Coordinator {
    typealias CoordinatedViewController = UIViewController & NavigatableViewController
    
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
    
    func goTo(_ viewController: CoordinatedViewController) {
        var vc = viewController
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
