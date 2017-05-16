//
//  SpecificTaskViewController.swift
//  Lesson 5 To Do
//
//  Created by Bryan on 5/15/17.
//  Copyright © 2017 KO. All rights reserved.
//

import UIKit

class SpecificTaskViewController: UIViewController {
    
    


    
    @IBOutlet weak var taskLabel: UILabel!   //24th
    
        var task = Task()   //23rd
        var previousVC = TasksViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important == true {
        taskLabel.text = task.name
        } else if task.important == false {
        taskLabel.text = "🖕🏻\(task.name)"   //26th
    }
    
    
    }

    @IBAction func completeTapped(_ sender: Any) {  //25th
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData() //27th  do this because the previouis vc thinks that the tableview. datasource self is all it needs without taking into account this shit
        
        navigationController!.popViewController(animated: true)    //28th  after they add the shit, make it immediately go back
        

        
        
    }

}





        

        
    
    

