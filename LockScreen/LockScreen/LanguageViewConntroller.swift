//
//  LanguageViewConntroller.swift
//  LockScreen
//
//  Created by Владислава on 2.11.23.
//

import UIKit

class LanguageViewConntroller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setLanguageObserver()
        setStrings()
    }
    
    func setLanguageObserver() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(setStrings),
            name: .languageChanged,
            object: nil)
    }
    
    @objc func setStrings() {}
}
