//
//  ViewController.swift
//  SampleUI
//
//  Created by Zedd on 2020/07/03.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var todos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    @IBAction func addButtonDidTap(_ sender: Any) {
        self.todos.append(self.myTextField.text ?? "")
        self.tableView.insertRows(at: [IndexPath(row: self.todos.count - 1, section: 0)], with: .fade)
        self.myTextField.text = ""
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = todos[indexPath.row]
        return cell
    }
}


