//
//  ViewController.swift
//  Learning_swift
//
//  Created by Jordan Widdison on 11/16/17.
//  Copyright © 2017 Jordan Widdison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.setupNavigation()
    self.setUpTableView()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  // MARK: - UI Helpers

  private func setupNavigation() {
    let screen = UIScreen.main.bounds
    let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screen.width, height: 44))
    let navItem = UINavigationItem(title: "Navigation Title")
    let cancelItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.cancel, target: nil, action: nil)
    let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: nil, action: nil)
    navItem.leftBarButtonItem = cancelItem
    navItem.rightBarButtonItem = doneItem
    navBar.setItems([navItem], animated: false)
    self.view.addSubview(navBar)
  }

  private func setUpTableView() {
    let table: UITableViewController = CustomTableViewController()
    let tableView: UITableView = UITableView()
    tableView.frame = CGRect(x: 0, y: 44, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    tableView.dataSource = table
    tableView.delegate = table
    self.view.addSubview(tableView)
  }
}

