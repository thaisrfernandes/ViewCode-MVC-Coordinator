//
//  ListDetailView.swift
//  ViewCode+MVC+Coordinator
//
//  Created by Thaís Fernandes on 04/07/24.
//

import UIKit

final class ListDetailView: UIView {

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Hello, world! 2"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        return label
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ListDetailView: ViewCode {
    func buildViewHierarchy() {
        addSubview(label)
    }
    
    func setupConstraints() {
        label.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor).isActive = true
    }
    
    func setupAdditionalConfigs() {
        backgroundColor = .orange
    }
    
    
}

