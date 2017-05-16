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
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: Any) {   //14th
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext     //**8th  with coredata
        let task = Task(context: context)    //8th     remember that Task is the name of entity. attribute is same as a property
        //20th safe code with optional
        if taskNameTextField.text != nil {
           task.name = taskNameTextField.text!
        }
     
        task.important = importantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()   //8th wth coredata
    
        
        navigationController!.popViewController(animated: true)    //19th  after they add the shit, make it immediately go back
        
    }
    

    


}
