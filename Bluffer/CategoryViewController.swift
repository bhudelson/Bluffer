//
//  CategoryViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    var gameViewController: GameViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Category View Controller Loaded")
        print("Category Selected: ", category) 

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        print("Category View Controller Did Appear")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectPolitics(sender: AnyObject) {
        
        category = "politics"
        print("Category Selected: ", category)
        
        // Start the game in GameViewController
        gameViewController.categorySelected()
    }
    
    @IBAction func selectAnimals(sender: AnyObject) {
        
        category = "animals"
        print("Category Selected: ", category)
        
        // Start the game in GameViewController
        gameViewController.categorySelected()
    }

 
    @IBAction func selectSpace(sender: AnyObject) {
        
        category = "space"
        print("Category Selected: ", category)
        
        // Start the game in GameViewController
        gameViewController.categorySelected()
    }
    
    
    @IBAction func selectRandom(sender: AnyObject) {
        
        category = "random"
        print("Category Selected: ", category)
        
        // Start the game in GameViewController
        gameViewController.categorySelected()
        
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
