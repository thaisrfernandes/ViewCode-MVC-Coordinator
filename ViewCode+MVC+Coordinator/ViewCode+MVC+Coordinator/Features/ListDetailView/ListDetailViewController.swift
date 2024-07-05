//
//  ListDetailViewController.swift
//  ViewCode+MVC+Coordinator
//
//  Created by Thaís Fernandes on 04/07/24.
//

import UIKit

class ListDetailViewController: UIViewController {
    weak var coordinator: MainCoordinator?

    let screen = ListDetailView()
    
    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
