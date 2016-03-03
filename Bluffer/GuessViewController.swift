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
        
    
        correctGuess = true
        
        print("GuessView - Current Round: ", round)
        print("GuessView - Team 1 Score: ", team1Score, " vs. Team 2 Score: ", team2Score)
        
        print("GuessView - Correct Guess. Increment score for guessing team.")
        
        //If this is the final round, go right to Victory page not Score page
        
        gameViewController.trackPoint()
        
        if round == totalRounds
        {
            gameViewController.nextRound()
            
        }

    }
    
    
    @IBAction func onNo(sender: AnyObject) {
        
        correctGuess = false
        
        print("GuessView - Current Round: ", round)
        print("GuessView - Team 1 Score: ", team1Score, " vs. Team 2 Score: ", team2Score)
        
        print("GuessView - Incorrect Guess. Increment score for describing team.")
        
        //If this is the final round, go right to Victory page not Score page
        
        gameViewController.trackPoint()
        
        if round == totalRounds
        {
            gameViewController.nextRound()
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
