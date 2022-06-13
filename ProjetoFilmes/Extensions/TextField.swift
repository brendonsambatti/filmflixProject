//
//  TextField.swift
//  ProjetoFilmes
//
//  Created by info 0033 on 13/06/22.
//

import Foundation
import UIKit

extension UITextField {

    func useUnderline() {

        let border = CALayer()
        let borderWidth = CGFloat(1.0)
        border.borderColor = UIColor.white.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
