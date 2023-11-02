//
//  Strings.swift
//  LockScreen
//
//  Created by Владислава on 2.11.23.
//


import Foundation

extension String {
    var localized: String {
        let selectedLanguage = UserDefaults.standard.string(forKey: "selectedLanguage") ?? "en"
        
        guard let path = Bundle.main.path(forResource: selectedLanguage.lowercased(), ofType: "lproj"),
              let bundle = Bundle(path: path)
        else { return self }
        let localizedText = bundle.localizedString(forKey: self, value: "", table: nil)
        return localizedText
    }
    
    func localized(_ args: CVarArg...) -> String {
        return String(format: localized, args)
    }
}
