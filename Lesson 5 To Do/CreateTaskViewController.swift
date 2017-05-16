//
//  CreateTaskViewController.swift
//  Lesson 5 To Do
//
//  Created by Bryan on 5/14/17.
//  Copyright © 2017 KO. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    
    @IBOutlet weak var taskNameTextField: UITextField!

    @IBOutlet weak var importantSwitch: UISwitch!
    
  
    var previousVC = TasksViewController()  //15th
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func addTapped(_ sender: Any) {   //14th
        
        let task = Task()
        //20th safe code with optional
        if taskNameTextField.text != nil {
           task.name = taskNameTextField.text!
        }
     
        task.important = importantSwitch.isOn
        
        previousVC.tasks.append(task)   //17th
        previousVC.tableView.reloadData() //18th  do this because the previouis vc thinks that the tableview. datasource self is all it needs without taking into account this shit
        
        navigationController!.popViewController(animated: true)    //19th  after they add the shit, make it immediately go back
        
    }
    

    


}
