//
//  TestViewController.swift
//  StackedCellsTableViewTest
//
//  Created by K Y on 8/12/19.
//  Copyright © 2019 K Y. All rights reserved.
//

import UIKit

private let CELL_ID = "StackTableViewCell"
private let CELL_COUNT = 5

final class TestViewController: UIViewController {

    var stackCounts: [Int] = [0, 0, 0, 0, 0]
    
    lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.dataSource = self
        table.delegate = self
        let nib = UINib(nibName: CELL_ID, bundle: nil)
        table.register(nib, forCellReuseIdentifier: CELL_ID)
        table.tableFooterView = UIView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = UITableView.automaticDimension
        table.estimatedRowHeight = 200.0
        view.addSubview(table)
        return table
    }()
    
    init() {
       super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("not implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ])
    }

}

extension TestViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CELL_COUNT
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID,
                                                 for: indexPath) as! StackTableViewCell
        cell.topLabel.text = "Cell \(indexPath.row)"
        cell.stackCount = stackCounts[indexPath.row]
        return cell
    }
}

extension TestViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        stackCounts[indexPath.row] += 1
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
