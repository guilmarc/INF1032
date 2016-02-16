//
//  ViewController.swift
//  ShoppingList
//
//  Created by Marco Guilmette on 2016-02-10.
//  Copyright © 2016 Infologique. All rights reserved.
//

import UIKit
import CoreData

class ItemViewController: UIViewController {

    @IBOutlet var itemNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func HandleSaveButtonAction(sender: AnyObject) {
        let newItem = ShoppingListCDManager.sharedInstance.createItem()
        newItem.title = self.itemNameTextField.text
        ShoppingListCDManager.sharedInstance.saveContext()
        
        self.navigationController?.popViewControllerAnimated(true)
    }
}

