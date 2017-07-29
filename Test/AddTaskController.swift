//
//  AddTaskController.swift
//  Test
//
//  Created by Kapil Chauhan on 28/07/17.
//  Copyright © 2017 Kapil Chauhan. All rights reserved.
//

import Foundation
import UIKit

class AddTaskController: UIViewController {
    
    
    @IBOutlet weak var TaskText: UITextField!
    
    
    @IBOutlet weak var TaskTitle: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        
        print(TaskText.text!)
        print(TaskTitle.text!)
        
        
        //Login Request
        let postString = "title=\(TaskTitle.text!)&description=\(TaskText.text!)"
        let saveResp = doHttpRequest(url: "todo-app.php", method: "GET", params: postString);
        if !((saveResp?.isEmpty)!) {
            
        } else {
            //errorMsg.isHidden = false
            //errorMsg.text = "Error while login."
        }
        //activityIndicator.stopAnimating()

    }
    
    
}
