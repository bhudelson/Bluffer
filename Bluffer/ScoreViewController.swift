//
//  ScoreViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
    var gameViewController: GameViewController!

    @IBOutlet weak var scoreHeadline: UILabel!
    
    @IBOutlet weak var scoreLabel1: UILabel!
    
    @IBOutlet weak var scoreLabel2: UILabel!
    
    @IBOutlet weak var roundsRemaining: UILabel!
    
    @IBAction func switchTeams(sender: AnyObject) {
        
        print("ScoreView - Current Round: ", round)
        print("ScoreView Rounds Remaining: ", totalRounds - round)
        print("ScoreView - Team 1 Score: ", team1Score, " vs. Team 2 Score: ", team2Score)
        
        // Switch to other team, start new round
        gameViewController.nextRound()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        reloadData()
    }
    
    func reloadData() {
        
        print("ScoreViewController Appeared")
        
        if round % 2 == 0 && correctGuess == true {
            //EVEN ROUND = Team 2 described, Team 1 guessed correctly
            //Team 1 gets a point
            
            scoreHeadline.text = "Team 1 Scores!"
        }
        else if round % 2 != 0 && correctGuess == true {
            //ODD ROUND = Team 1 described, Team 2 guessed correctly
            //Team 2 gets a point
            
            scoreHeadline.text = "Team 2 Scores!"
        }
        else if correctGuess == false && round % 2 == 0 {
            
            //Round is EVEN. Team 2 described and Team 1 guessed incorrectly
            //So team 2 gets a point
            
            scoreHeadline.text = "Team 2 Scores!"
        }
        else if correctGuess == false && round % 2 != 0
        {
            //Round is ODD. Team 1 described and Team 2 guessed incorrectly
            //So team 1 gets a point
            
            scoreHeadline.text = "Team 1 Scores!"
            
        }
        else
        {
            print("ERROR OCCURRED")
        }
        
        print("Team 1: ", team1Score, " vs. Team 2: ", team2Score)
        
        
        scoreLabel1.text = String(team1Score)
        scoreLabel2.text = String(team2Score)
        
        print("Current Round: ", round)
        print("Rounds Remaining: ", totalRounds - round)
        
        roundsRemaining.text = String(totalRounds-round)
        
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
