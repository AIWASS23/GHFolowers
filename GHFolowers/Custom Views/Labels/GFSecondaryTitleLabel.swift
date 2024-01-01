//
//  GFSecondaryTitleLabel.swift
//  GHFolowers
//
//  Created by Marcelo de Araújo on 30/12/2023.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//    convenience init(fontSize: CGFloat) {
//        self.init(frame: .zero)
//        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
//    }

    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        configure()
    }
    
    private func configure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.90
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }

}
