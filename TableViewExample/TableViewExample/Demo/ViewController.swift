//
//  ViewController.swift
//  TableViewExample
//
//  Created by Компьютер on 27.01.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myTableView = UITableView()
    var segmentControl = UISegmentedControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signTitle()
        setupLoginTableViewCell()
    }
    
    func signTitle() {
        navigationItem.title = "Войдите в учётную запись"
    }
    
    func setupLoginTableViewCell() {
        myTableView = UITableView(frame: view.bounds, style: .insetGrouped)
        myTableView.register(LoginTableViewCell.self, forCellReuseIdentifier: "LoginTableViewCell")
        myTableView.register(PasswordTableViewCell.self, forCellReuseIdentifier: "PasswordTableViewCell")
        myTableView.separatorStyle = .none
        myTableView.dataSource = self
        myTableView.delegate = self
        view.addSubview(myTableView)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell: LoginTableViewCell = myTableView.dequeueReusableCell(withIdentifier: "LoginTableViewCell", for: indexPath) as! LoginTableViewCell
            return cell
        } else {
            let cell: PasswordTableViewCell = myTableView.dequeueReusableCell(withIdentifier: "PasswordTableViewCell", for: indexPath) as! PasswordTableViewCell
            return cell
            }
        }
    }
