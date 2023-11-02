//
//  Button.swift
//  LockScreen
//
//  Created by Владислава on 26.10.23.
//

import Foundation
import UIKit


class InputButton: UIButton {
    
    init() {
        super.init(frame: .zero)
        initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initView() {
        self.heightAnchor.constraint(equalToConstant: 90).isActive = true
        self.widthAnchor.constraint(equalToConstant: 90).isActive = true
        self.layer.cornerRadius = 45
        self.clipsToBounds = true
        self.alpha = 1
        self.tintColor = .white
        self.backgroundColor = .darkGray
        self.titleLabel?.font = .systemFont(ofSize: 40.0, weight: .regular)

    }
    
}
