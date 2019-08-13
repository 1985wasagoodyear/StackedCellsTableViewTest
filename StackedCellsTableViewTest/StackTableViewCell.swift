//
//  StackTableViewCell.swift
//  StackedCellsTableViewTest
//
//  Created by K Y on 8/12/19.
//  Copyright © 2019 K Y. All rights reserved.
//

import UIKit

private let NUM_OF_STACK_ELEMENTS = 10

final class StackTableViewCell: UITableViewCell {

    @IBOutlet var topLabel: UILabel!
    @IBOutlet private var stackView: UIStackView! {
        didSet {
            for _ in 0..<NUM_OF_STACK_ELEMENTS {
                let frame = CGRect(x: 0.0, y: 0.0,
                                   width: 300.0, height: 100.0)
                let view = StackElementView(frame: frame)
                stackView.addArrangedSubview(view)
                stacks.append(view)
            }
        }
    }
    
    private var stacks: [StackElementView] = []
    
    var stackCount: Int = 0 {
        didSet {
            setupStacks()
        }
    }
    
    private func setupStacks() {
        let count = min(stackCount, NUM_OF_STACK_ELEMENTS)
        for i in 0..<count {
            stacks[i].isHidden = false
        }
        for i in count..<NUM_OF_STACK_ELEMENTS {
            stacks[i].isHidden = true
        }
    }
}
