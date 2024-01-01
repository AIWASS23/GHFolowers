//
//  GFEmptyStateView.swift
//  GHFolowers
//
//  Created by Marcelo de Araújo on 29/12/2023.
//

import UIKit

class GFEmptyStateView: UIView {

    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    private func configure() {
        addSubview(messageLabel)
        addSubview(logoImageView)
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        logoImageView.image = UIImage(named: "empty-state-logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 100),

            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8),
            logoImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7),
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 10)
        ])
    }
    
}
