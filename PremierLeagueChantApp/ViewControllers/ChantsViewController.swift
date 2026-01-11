//
//  ChantsViewController.swift
//  PremierLeagueChantApp
//
//  Created by Naushad Ali Khan on 10/01/26.
//

import UIKit

class ChantsViewController: UIViewController {
    
    //MARK: - UI
    private lazy var tableVw: UITableView = {
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
}

// Extensions must be OUTSIDE the class
private extension ChantsViewController {
    
    func setup() {
        view.addSubview(tableVw)
        tableVw.dataSource = self
        tableVw.delegate = self

        NSLayoutConstraint.activate([
            tableVw.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableVw.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor ),
            tableVw.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 24.0),
            tableVw.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -24.0)
        ])
    }
}

extension ChantsViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        switch indexPath.row {
        case 0:
            cell.backgroundColor = .systemTeal
        case 1:
            cell.backgroundColor = .systemGray
        case 2:
            cell.backgroundColor = .systemPink
        default:
            break
        }
        return cell
    }
}
