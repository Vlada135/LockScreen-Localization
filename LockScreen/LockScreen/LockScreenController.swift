//
//  LockScreenController.swift
//  LockScreen
//
//  Created by Владислава on 26.10.23.
//

import Foundation
import SnapKit
import UIKit

class LockScreenController: LanguageViewConntroller {
   private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.isUserInteractionEnabled = true
       label.font = .systemFont(ofSize: 30.0, weight: .regular)
       label.textColor = .white
       label.textAlignment = .center
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
         let label = UILabel()
         label.isUserInteractionEnabled = true
        label.textColor = .white
        label.textAlignment = .center
         return label
     }()
  
    private lazy var mainStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    private lazy var firstStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        stack.spacing = 30
        return stack
    }()
    private lazy var secondStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        stack.spacing = 30
        return stack
    }()
    private lazy var thirdStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        stack.spacing = 30
        return stack
    }()
    private lazy var fourStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        stack.spacing = 30
        return stack
    }()
    private lazy var button1: InputButton = {
        let button = InputButton()
        button.setTitle(
            "1",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var button2: InputButton = {
        let button = InputButton()
        button.setTitle(
            "2",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var button3: InputButton = {
        let button = InputButton()
        button.setTitle(
            "3",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var button4: InputButton = {
        let button = InputButton()
        button.setTitle(
            "4",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var button5: InputButton = {
        let button = InputButton()
        button.setTitle(
            "5",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var button6: InputButton = {
        let button = InputButton()
        button.setTitle(
            "6",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var button7: InputButton = {
        let button = InputButton()
        button.setTitle(
            "7",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var button8: InputButton = {
        let button = InputButton()
        button.setTitle(
            "8",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var button9: InputButton = {
        let button = InputButton()
        button.setTitle(
            "9",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var button0: InputButton = {
        let button = InputButton()
        button.setTitle(
            "0",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var faceID: InputButton = {
        let button = InputButton()
        button.contentMode = .scaleAspectFill
        button.setImage(UIImage(systemName: "faceid"), for: .normal)
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var viewClear: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 90).isActive = true
        view.widthAnchor.constraint(equalToConstant: 90).isActive = true
        return view
    }()
    
    private lazy var circletStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        stack.spacing = 20
        return stack
    }()
    
    private lazy var circlet1Image: UIImageView = {
        let image = UIImageView()
        image.widthAnchor.constraint(equalToConstant: 20).isActive = true
        image.heightAnchor.constraint(equalToConstant: 20).isActive = true
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 1.2
        image.layer.cornerRadius = 10
        image.backgroundColor = .clear
        image.clipsToBounds = true
        return image
    }()
    private lazy var circlet2Image: UIView = {
        let image = UIView()
        image.widthAnchor.constraint(equalToConstant: 20).isActive = true
        image.heightAnchor.constraint(equalToConstant: 20).isActive = true
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 1.2
        image.layer.cornerRadius = 10
        image.backgroundColor = .clear
        image.clipsToBounds = true
        return image
    }()
    private lazy var circlet3Image: UIView = {
        let image = UIView()
        image.widthAnchor.constraint(equalToConstant: 20).isActive = true
        image.heightAnchor.constraint(equalToConstant: 20).isActive = true
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 1.2
        image.layer.cornerRadius = 10
        image.backgroundColor = .clear
        image.clipsToBounds = true
        return image
    }()
    private lazy var circlet4Image: UIView = {
        let image = UIView()
        image.widthAnchor.constraint(equalToConstant: 20).isActive = true
        image.heightAnchor.constraint(equalToConstant: 20).isActive = true
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 1.2
        image.layer.cornerRadius = 10
        image.backgroundColor = .clear
        image.clipsToBounds = true
        return image
    }()
    private lazy var buttonStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillProportionally
        stack.axis = .horizontal
        stack.spacing = 60
        return stack
    }()
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 20.0, weight: .light)
        button.titleLabel?.textAlignment = .right
        button.addTarget(
            self,
            action: #selector(actionCancel),
            for: .touchUpInside
        )
        return button
    }()
    private lazy var languageButton: UIButton = {
        let button = UIButton()
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 20.0, weight: .light)
        button.titleLabel?.textAlignment = .left
        button.addTarget(
            self,
            action: #selector(action),
            for: .touchUpInside
        )
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        makeLayout()
        makeConstraints()
    }
    private func makeLayout() {
        view.backgroundColor = .black
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(mainStack)
        view.addSubview(circletStack)
        circletStack.addArrangedSubview(circlet1Image)
        circletStack.addArrangedSubview(circlet2Image)
        circletStack.addArrangedSubview(circlet3Image)
        circletStack.addArrangedSubview(circlet4Image)
        mainStack.addArrangedSubview(firstStack)
        firstStack.addArrangedSubview(button1)
        firstStack.addArrangedSubview(button2)
        firstStack.addArrangedSubview(button3)
        mainStack.addArrangedSubview(secondStack)
        secondStack.addArrangedSubview(button4)
        secondStack.addArrangedSubview(button5)
        secondStack.addArrangedSubview(button6)
        mainStack.addArrangedSubview(thirdStack)
        thirdStack.addArrangedSubview(button7)
        thirdStack.addArrangedSubview(button8)
        thirdStack.addArrangedSubview(button9)
        mainStack.addArrangedSubview(fourStack)
        fourStack.addArrangedSubview(faceID)
        fourStack.addArrangedSubview(button0)
        fourStack.addArrangedSubview(viewClear)
        view.addSubview(buttonStack)
        buttonStack.addArrangedSubview(languageButton)
        buttonStack.addArrangedSubview(cancelButton)

        
    }
    private func makeConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(60)
            make.centerX.equalToSuperview()
            make.height.equalTo(30)
        }
        subtitleLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(30)
        }
        circletStack.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(140)
        }
        mainStack.snp.makeConstraints { make in
            make.bottom.equalTo(cancelButton.snp.top).offset(-90)
            make.centerX.equalToSuperview()
            make.width.equalTo(330)
        }
        
        buttonStack.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-16)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
    
    func changeLanguageAlert() {
        let alert = UIAlertController(
            title: AppLanguage.vcAlertLanguage.localized,
            message: AppLanguage.vcAlertMessage.localized,
            preferredStyle: .alert
        )

        let ruAction = UIAlertAction(title: AppLanguage.vcAlertVariantRu.localized, style: .default) { [weak self] _ in
            self?.saveChangedlanguage("ru")
        }
        
        let enAction = UIAlertAction(title: AppLanguage.vcAlertVariantEn.localized, style: .default) { [weak self] _ in
            self?.saveChangedlanguage("en")
        }
        
        alert.addAction(ruAction)
        alert.addAction(enAction)
        self.present(alert, animated: true)
    }
    func saveChangedlanguage(_ selectedLanguage: String) {
        let defaults = UserDefaults.standard
        defaults.set(selectedLanguage, forKey: "selectedLanguage")
        NotificationCenter.default.post(name: .languageChanged, object: nil)
    }
    @objc func action(sender: UIButton) {
        changeLanguageAlert()
    }
    
    @objc func actionCancel(sender: UIButton) {
    }
    
    override func setStrings() {
        titleLabel.text = AppLanguage.vcTitleLock.localized
        subtitleLabel.text = AppLanguage.vcSubtitleLock.localized
        cancelButton.setTitle(
            AppLanguage.vccancelButton.localized,
            for: .normal
        )
        languageButton.setTitle(
            AppLanguage.vclanguageButton.localized,
            for: .normal
        )

    }
}
