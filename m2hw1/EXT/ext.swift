//
//  ext.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 27.11.23.
//

import UIKit

extension UIView {
    static func config <T: UIView>(view: T, block: (T) -> ()) -> T {
        view.translatesAutoresizingMaskIntoConstraints = false
        block(view)
        return view
    }
}
