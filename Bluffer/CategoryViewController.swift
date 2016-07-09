//
//  CategoryViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    //OUTLETS
    @IBOutlet weak var tropicsButton: UIButton!
    @IBOutlet weak var randomButton: UIButton!
    @IBOutlet weak var eightiesButton: UIButton!
    @IBOutlet weak var spaceButton: UIButton!
    @IBOutlet weak var animalsButton: UIButton!
    @IBOutlet weak var politicsButton: UIButton!
    
    
    @IBOutlet weak var politicsLabel: UILabel!
    @IBOutlet weak var randomLabel: UILabel!
    @IBOutlet weak var animalsLabel: UILabel!
    @IBOutlet weak var spaceLabel: UILabel!
    @IBOutlet weak var eightiesLabel: UILabel!
    @IBOutlet weak var tropicsLabel: UILabel!
    
    
    
    //VARIABLES
    var gameViewController: GameViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Category View Controller Loaded")
        print("Category Selected: ", category)
        
        //set icon alpha to 0
        politicsButton.alpha = 0
        randomButton.alpha = 0
        animalsButton.alpha = 0
        spaceButton.alpha = 0
        eightiesButton.alpha = 0
        tropicsButton.alpha = 0
        
        //set labels alpha to 0
        politicsLabel.alpha = 0
        randomLabel.alpha = 0
        animalsLabel.alpha = 0
        spaceLabel.alpha = 0
        eightiesLabel.alpha = 0
        tropicsLabel.alpha = 0
        
        
        //set original scale to small
        politicsButton.transform = CGAffineTransformMakeScale(0.2, 0.2)
        randomButton.transform = CGAffineTransformMakeScale(0.2, 0.2)
        animalsButton.transform = CGAffineTransformMakeScale(0.2, 0.2)
        spaceButton.transform = CGAffineTransformMakeScale(0.2, 0.2)
        eightiesButton.transform = CGAffineTransformMakeScale(0.2, 0.2)
        tropicsButton.transform = CGAffineTransformMakeScale(0.2, 0.2)


       
    }
    
    override func viewDidAppear(animated: Bool) {
        
        print("Category View Controller Did Appear")
        
        // first icon
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.politicsButton.transform = CGAffineTransformMakeScale(1,1)
            self.politicsButton.alpha=1
        })
        
        // second icon
        delay(0.1) { () -> () in
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.randomButton.transform = CGAffineTransformMakeScale(1,1)
                self.randomButton.alpha = 1
            })
        }
        
        // third icon
        delay(0.2) { () -> () in
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.animalsButton.transform = CGAffineTransformMakeScale(1,1)
                self.animalsButton.alpha = 1
            })
        }
        
        // fourth icon
        delay(0.3) { () -> () in
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.spaceButton.transform = CGAffineTransformMakeScale(1,1)
                self.spaceButton.alpha = 1
            })
        }
        
        // fifth icon
        delay(0.4) { () -> () in
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.eightiesButton.transform = CGAffineTransformMakeScale(1,1)
                self.eightiesButton.alpha = 1
            })
        }
        
        // sixth icon
        delay(0.5) { () -> () in
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.tropicsButton.transform = CGAffineTransformMakeScale(1,1)
                self.tropicsButton.alpha = 1
            })
        }
        
        // labels
        delay(0.8) { () -> () in
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.politicsLabel.alpha = 1
                self.randomLabel.alpha = 1
                self.animalsLabel.alpha = 1
                self.spaceLabel.alpha = 1
                self.eightiesLabel.alpha = 1
                self.tropicsLabel.alpha = 1
            })
        }
        
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
    
    @IBAction func selectTropical(sender: AnyObject) {
        
        category = "tropical"
        print("Category Selected: ", category)
        
        // Start the game in GameViewController
        gameViewController.categorySelected()
        
    }
    
    @IBAction func selectEighties(sender: AnyObject) {
        
        category = "eighties"
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
