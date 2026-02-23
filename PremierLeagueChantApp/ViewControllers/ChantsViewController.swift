//
//  ChantsViewController.swift
//  PremierLeagueChantApp
//
//  Created by Naushad Ali Khan on 10/01/26.
//

import UIKit

class ChantsViewController: UIViewController, UITableViewDelegate {
    
    //MARK: - UI
    private lazy var tableVw: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .clear
        tv.rowHeight = UITableView.automaticDimension
        tv.estimatedRowHeight = 44
        tv.separatorStyle = .none
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tv.register(TeamTableViewCell.self, forCellReuseIdentifier: TeamTableViewCell.cellId)
        return tv
    }()
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
}

// Extensions must be OUTSIDE the class
private extension ChantsViewController {
    
    func setup() {
        view.addSubview(tableVw)
        tableVw.dataSource = self
        tableVw.delegate = self
        
        navigationController?.navigationBar.topItem?.title = "Football Chants"
        navigationController?.navigationBar.prefersLargeTitles = true

        NSLayoutConstraint.activate([
            tableVw.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableVw.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor ),
            tableVw.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 24.0),
            tableVw.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -24.0)
        ])
    }
}

// MARK: - UITableViewDataSource

extension ChantsViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableVw.dequeueReusableCell(
            withIdentifier: TeamTableViewCell.cellId,
            for: indexPath
        ) as! TeamTableViewCell

        cell.configure()
        return cell
    }
}
