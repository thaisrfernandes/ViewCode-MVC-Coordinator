//
//  ListsViewController.swift
//  ViewCode+MVC+Coordinator
//
//  Created by Thaís Fernandes on 04/07/24.
//

import UIKit

class ListsViewController: UIViewController, NavigatableViewController {
    weak var coordinator: MainCoordinator?
    
    let screen = ListsView()
    
    override func loadView() {
        screen.delegate = self
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ListsViewController: ListsViewDelegate {
    func onTapButton() {
        coordinator?.goTo(ListDetailViewController(title: "Details"))
    }
}
