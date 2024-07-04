//
//  ViewCode.swift
//  ViewCode+MVC+Coordinator
//
//  Created by Thaís Fernandes on 04/07/24.
//

import Foundation

protocol ViewCode {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfigs()
    func setupView()
}

extension ViewCode {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfigs()
    }
}
