//
//  ListDetailViewController.swift
//  ViewCode+MVC+Coordinator
//
//  Created by Thaís Fernandes on 04/07/24.
//

import UIKit

class ListDetailViewController: UIViewController, NavigatableViewController {
    weak var coordinator: MainCoordinator?
    
    let screen: ListDetailView?
    
    init(title: String) {
        self.screen = ListDetailView(title: title)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
