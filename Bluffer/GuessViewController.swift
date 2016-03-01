//
//  GuessViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class GuessViewController: UIViewController {

    var gameViewController: GameViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onYes(sender: AnyObject) {
        
        
        
        
        // Track the point in GameViewController

        pointScored = true

        
        gameViewController.trackPoint()
        
        print("GuessView - Current Round: ", round)
        print("GuessView - Team 1 Score: ", team1Score, " vs. Team 2 Score: ", team2Score)
        
        print("A team guessed correctly. Update score")
        
        //If this is the final round, go right to Victory page not Score page
        
        if round == totalRounds
        {
            NSNotificationCenter.defaultCenter().postNotificationName("switch", object: nil)
            
        }
        
    }
    
    
    @IBAction func onNo(sender: AnyObject) {
        
        //Load the current scoreboard in GameViewController
        print("Other team guessed incorrectly. Just go directly to scoreboard")
        pointScored = false
        
        /*
        
        if round % 2 == 0 {
            
            //Round is EVEN. Team 2 described and Team 1 guessed incorrectly
            //So team 2 gets a point
            
            team2Score = ++team1Score
            
            print("Team 2 Score: ", team2Score)
        }
        else
        {
            //Round is ODD. Team 1 described and Team 2 guessed incorrectly
            //So team 1 gets a point
            
            team1Score = ++team1Score
            
            print("Team 1 Score: ", team1Score)
            
        }
        */
        
        gameViewController.trackPoint()
        
        //If this is the final round, go right to Victory page not Score page
        
        if round == totalRounds
        {
            NSNotificationCenter.defaultCenter().postNotificationName("switch", object: nil)
        }
        
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
