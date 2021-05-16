//
//  LettersControl.swift
//  VK app
//
//  Created by Maxim Bekmetov on 16.05.2021.
//

import UIKit

class LettersControl: UIControl {
    var selectedLetter: String? = nil {
        didSet {
            self.updateSelectedLatter()
            self.sendActions(for: .valueChanged)
        }
    }
    
    var letters = [String]()
    private var buttons: [UIButton] = []
    private var stackView: UIStackView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
    }
    
    func setupView() {
        for letter in letters {
            let button = UIButton(type: .system)
            button.setTitle(letter, for: .normal)
            button.setTitleColor(.red, for: .normal)
            button.setTitleColor(.systemBlue, for: .selected)
            button.addTarget(self, action: #selector(selectLetter(_:)), for: .touchUpInside)
            self.buttons.append(button)
        }
        
        stackView = UIStackView(arrangedSubviews: self.buttons)
        
        self.addSubview(stackView)
        
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
    }
    
    private func updateSelectedLatter() {
        for (index, button) in self.buttons.enumerated() {
            let letter = letters[index]
            button.isSelected = letter == self.selectedLetter
        }
    }
    
    @objc private func selectLetter(_ sender: UIButton) {
        guard let index = self.buttons.firstIndex(of: sender) else { return }
        let letter = letters[index]
        self.selectedLetter = letter
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.stackView.frame = bounds
    }
}
