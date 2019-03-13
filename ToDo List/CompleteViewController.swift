//
//  CompleteViewController.swift
//  ToDo List
//
//  Created by Huy Hoang on 3/8/19.
//  Copyright © 2019 Huy Hoang. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if selectedToDo.important {
            titleLabel.text = "❗️" + selectedToDo.name
        } else {
            titleLabel.text = selectedToDo.name
        }
        
        
    }

    
    @IBAction func completeTapped(_ sender: Any) {
        var i = 0;
        for toDo in previousVC.toDos {
            if toDo.name == selectedToDo.name
            {
                previousVC.toDos.remove(at: i)
                break
            }
            i += 1
        }
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
        
    }
}
