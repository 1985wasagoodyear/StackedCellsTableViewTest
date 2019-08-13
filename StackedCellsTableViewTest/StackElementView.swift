//
//  StackView.swift
//  StackedCellsTableViewTest
//
//  Created by K Y on 8/12/19.
//  Copyright © 2019 K Y. All rights reserved.
//

import UIKit

class StackView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 4.0
        layer.borderColor = UIColor.red.cgColor
        layer.borderWidth = 2.0
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("not implemented")
    }

}
