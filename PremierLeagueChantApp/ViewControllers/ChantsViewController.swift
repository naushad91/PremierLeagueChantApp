//
//  ChantsViewController.swift
//  PremierLeagueChantApp
//
//  Created by Naushad Ali Khan on 10/01/26.
//

import UIKit

class ChantsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tableVw: UITableView = {
            let tv = UITableView()
            tv.translatesAutoresizingMaskIntoConstraints = false
            tv.backgroundColor = .clear
            tv.rowHeight = UITableView.automaticDimension
            tv.estimatedRowHeight = 44
            tv.separatorStyle = .none
            tv.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
            return tv
        }()

        // MARK: - Lifecycle

        override func loadView() {
            super.loadView()
            setup()
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = .systemBlue
        }

        private extension ChantsViewController {

            func setup() {
                self.view.addSubview(tableVw)

                NSLayoutConstraint.activate([
                    tableVw.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                    tableVw.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
                    tableVw.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
                    tableVw.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
                ])
            }
        

}
