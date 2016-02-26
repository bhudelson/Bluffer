//
//  CategoryViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    public var categorySelected = String!("none")
    
    var gameControl: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Category View Controller Loaded")
        print("Category Selected: ", categorySelected) 

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectPolitics(sender: AnyObject) {
        
        print("Politics Selected")
        categorySelected = "politics"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
