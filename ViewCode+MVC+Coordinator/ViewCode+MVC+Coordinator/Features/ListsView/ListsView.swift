//
//  ListsView.swift
//  ViewCode+MVC+Coordinator
//
//  Created by Thaís Fernandes on 04/07/24.
//

import UIKit

protocol ListsViewDelegate {
    func onTapButton()
}

final class ListsView: UIView {
    var delegate: ListsViewDelegate?
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Navigate", for: .normal)
        button.addTarget(self, action: #selector(onTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func onTapButton() {
        self.delegate?.onTapButton()
    }
}

extension ListsView: ViewCode {
    func buildViewHierarchy() {
        addSubview(button)
    }
    
    func setupConstraints() {
        button.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor).isActive = true
    }
    
    func setupAdditionalConfigs() {
        backgroundColor = .systemBackground
    }
}
