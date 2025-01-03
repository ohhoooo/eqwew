//
//  UILabel+Extension.swift
//  SecondWeekApp
//
//  Created by 김정호 on 1/2/25.
//

import UIKit

extension UILabel {
    func setPrimaryLabel(text: String) {
        self.font = .boldSystemFont(ofSize: 20)
        self.textColor = .green
        self.textAlignment = .center
        self.text = text
    }
}
