//
//  StackElementView.swift
//  StackedCellsTableViewTest
//
//  Created by K Y on 8/12/19.
//  Copyright © 2019 K Y. All rights reserved.
//

import UIKit

final class StackElementView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 4.0
        layer.borderColor = UIColor.red.cgColor
        layer.borderWidth = 2.0
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: frame.height).isActive = true
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("not implemented")
    }
}
