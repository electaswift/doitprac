//
//  TasksViewController.swift
//  Lesson 5 To Do
//
//  Created by Bryan on 5/14/17.
//  Copyright © 2017 KO. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {  //3rd adding uitableviewdelegate and other

    @IBOutlet weak var tableView: UITableView! //1st
    
    var tasks : [Task] = []   //7th
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()   //8th
        
        tableView.dataSource = self   //2nd
        tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {   //3rd, 5th is creating the class task.swift
        return tasks.count     //9th
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {   //4th    returns an object within UITableViewCell
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]     //10th
        if task.important == true {
            cell.textLabel?.text = task.name  //11th
        } else if task.important == false {
            cell.textLabel?.text = "🖕🏻\(task.name)"
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let task = tasks[indexPath.row]
            selectedIndex = indexPath.row
        
        
        performSegue(withIdentifier: "selectTaskSegue", sender: task)
       
    
    }       //20th after creating new story board view controller for selecting task and creating correpsonding segue
    
    
    func makeTasks() -> [Task] {   //6th
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Buy cheese"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Mow the lawn"
        task3.important = false
        
    return [task1, task2, task3]
        
    }
    
    @IBAction func plusTapped(_ sender: Any) {    // 12th add navigation/ plus button on storyboard tableview view controller. create another view controller. create segue. 
        
        //13th add all the labels/buttons on the 2nd view controller. then create a code version for it by file new file cocoa touch class. click on the yellow circle on storyboard and on custom class, type in class name which is createtaskviewcontroller
        
        
        
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {  //16th    
        //21st  since there are two segues, create if statement 
        if segue.identifier == "addSegue" {
            let nextVC = segue.destination as! CreateTaskViewController
            nextVC.previousVC = self }
        else if segue.identifier == "selectTaskSegue" {    //22nd create new view controller. 
            let deleteVC = segue.destination as! SpecificTaskViewController
            deleteVC.task = sender as! Task
            deleteVC.previousVC = self
    }
    }
    
    
}




/*
 -buton control click under label
 put as action
 -add any code for button tap to do something
 
 
 -when maximizing table view, uncheck the constrain to margins and put 0 for all 4 shit
 
 
 -control click table view under class ViewController
 
 -create new view controller. click on yellow circle and control click to other view controller. click show = segue
 
 
 
 -to add back, click on view controller yellow circle. click editor, embed in navigation controller
 -change segue kind to show
 
 -present modally shoves another view controller on top
 
 -click navigation bar on view controller. change name of back button. 
 
 
 -to get rid of large space between top and emojis, click on yellow circle of table view controller and uncheck "adjust scroll view insets"
 
 bar button item for the shit on navigation bar instead of regular button.  click on system item - add
 
 
 */
