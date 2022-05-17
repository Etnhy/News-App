//
//  UIButton+Extension.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import Foundation
import UIKit

extension UIButton {
    convenience init(title: String?,
                     backgroundColor: UIColor? = .clear,
                     titleColor: UIColor? = .black,
                     tintColor:UIColor? = .white,
                     font: UIFont? = .systemFont(ofSize: 18),
                     isShadow: Bool = false,
                     cornerRadius: CGFloat = 0) {
        self.init(type: .system)
     
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(titleColor, for: .normal)
        self.tintColor = titleColor
        self.titleLabel?.font = font
        self.layer.cornerRadius = cornerRadius
        
        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
}
