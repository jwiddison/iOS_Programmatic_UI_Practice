//
//  CustomTableViewController.swift
//  Learning_swift
//
//  Created by Jordan Widdison on 11/17/17.
//  Copyright © 2017 Jordan Widdison. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {

  private let myArray: NSArray = ["First","Second","Third"]
  private var myTableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()

    let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
    let displayWidth: CGFloat = self.view.frame.width
    let displayHeight: CGFloat = self.view.frame.height

    myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
    myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
    myTableView.dataSource = self
    myTableView.delegate = self
    self.view.addSubview(myTableView)
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Num: \(indexPath.row)")
    print("Value: \(myArray[indexPath.row])")
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return myArray.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
    cell.textLabel!.text = "\(myArray[indexPath.row])"
    return cell
  }
}
