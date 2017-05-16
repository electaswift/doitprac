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
    
    var task : Task? = nil   //23rd    cd4
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important == true {
        taskLabel.text = task!.name!
        } else if task!.important == false {
        taskLabel.text = "🖕🏻 \(task!.name!)"   //26th
    }
    
    
    }

    @IBAction func completeTapped(_ sender: Any) {  //25th
   
         let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext   //cd5
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        navigationController!.popViewController(animated: true)    //28th  after they add the shit, make it immediately go back
        

        
        
    }

}





        

        
    
    

