//
//  GuessViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class GuessViewController: UIViewController {

    
    @IBOutlet weak var askLabel: UILabel!
    @IBOutlet weak var bubbleButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    
    var gameViewController: GameViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        print("Prompt Text Appeared")
        
        askLabel.alpha = 1
        bubbleButton.alpha = 1
        questionLabel.alpha = 0
        yesButton.alpha = 0
        noButton.alpha = 0
        
        
        UIView.animateWithDuration(1, delay: 10, options: [], animations: { () -> Void in self.questionLabel.alpha = 1; self.askLabel.alpha = 0; self.bubbleButton.alpha = 0; self.yesButton.alpha = 1; self.noButton.alpha = 1 }, completion: nil)
    }
    
    
    @IBAction func onYes(sender: AnyObject) {
        
    
        correctGuess = true
        
        print("GuessView - Current Round: ")
        print("GuessView - Team 1 Score: ", team1Score, " vs. Team 2 Score: ", team2Score)
        
        print("GuessView - Correct Guess. Increment score for guessing team.")
        
        //If this is the final round, go right to Victory page not Score page
        
        gameViewController.trackPoint()
        
        if gameRound == totalRounds
        {
            gameViewController.nextRound()
            
        }

    }
    
    
    @IBAction func onNo(sender: AnyObject) {
        
        correctGuess = false
        
        print("GuessView - Current Round: ", gameRound)
        print("GuessView - Team 1 Score: ", team1Score, " vs. Team 2 Score: ", team2Score)
        
        print("GuessView - Incorrect Guess. Increment score for describing team.")
        
        //If this is the final round, go right to Victory page not Score page
        
        gameViewController.trackPoint()
        
        if gameRound == totalRounds
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
