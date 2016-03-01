//
//  VictoryViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class VictoryViewController: UIViewController {
    
    var gameViewController: GameViewController!

    @IBOutlet weak var victoryHeadline: UILabel!
    
    @IBOutlet weak var scoreLabel1: UILabel!
    
    @IBOutlet weak var scoreLabel2: UILabel!

    @IBAction func replay(sender: AnyObject) {
        
        print("Play Another Game")

        print("VictoryView - Headline: ", victoryHeadline.text)
        print("VictoryView - Team 1 Score: ", team1Score, " vs. Team 2 Score: ", team2Score)
        
        // Restart a new game
        NSNotificationCenter.defaultCenter().postNotificationName("restart", object: nil)
    }
    
    
    @IBAction func exit(sender: AnyObject) {
        
        print("Exit To Splash")
        
        //let parentVC = self.parentViewController
        //parentVC.dismissViewControllerAnimated(false, completion: nil)
        
        self.dismissViewControllerAnimated(false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("VictoryViewController Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        print("VictoryViewController Did Appear")
        reloadData()
        
            }
    
    func reloadData() {
        
        if team1Score > team2Score
        {
            victoryHeadline.text = "Team 1 Wins!"
        }
        else if team2Score > team1Score
        {
            victoryHeadline.text = "Team 2 Wins!"
        }
        else if team1Score == team2Score
        {
            victoryHeadline.text = "Game Ends In A Tie!"
        }
        else
        {
            print("ERROR HAS OCCURRED")
        }
        
        scoreLabel1.text = String(team1Score)
        scoreLabel2.text = String(team2Score)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
