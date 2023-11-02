//
//  InputView.swift
//  LockScreen
//
//  Created by Владислава on 26.10.23.
//

import Foundation
import UIKit


class InputView: UIView {
    
    init() {
        super.init(frame: .zero)
        initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initView() {
        self.heightAnchor.constraint(equalToConstant: 20).isActive = true
        self.widthAnchor.constraint(equalToConstant: 20).isActive = true
        self.clipsToBounds = false
        self.layer.cornerRadius = 10
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = 1
        self.backgroundColor = .white
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 5

    }
    
}
