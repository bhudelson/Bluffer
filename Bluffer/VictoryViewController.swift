//
//  VictoryViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class VictoryViewController: UIViewController {
    
    @IBOutlet weak var cheerleadersImage: UIImageView!
    
    var gameViewController: GameViewController!

    @IBOutlet weak var victoryHeadline: UILabel!
    
    @IBOutlet weak var scoreLabel1: UILabel!
    
    @IBOutlet weak var scoreLabel2: UILabel!

    @IBAction func replay(sender: AnyObject) {
        
        print("Play Another Game")

        print("VictoryView - Headline: ", victoryHeadline.text)
        print("VictoryView - Team 1 Score: ", team1Score, " vs. Team 2 Score: ", team2Score)
        
        // Restart a new game
        gameViewController.restart()
    }
    
    @IBAction func exit(sender: AnyObject) {
        
        print("Exit To Splash")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let startViewController = storyboard.instantiateInitialViewController()
        
        let application = UIApplication.sharedApplication()
        application.keyWindow?.rootViewController = startViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("VictoryViewController Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        print("VictoryViewController Did Appear")
        
        cheerleadersImage.transform = CGAffineTransformMakeScale(0.9, 0.9)
        cheerleadersImage.alpha = 0.7
        
        
        UIView.animateWithDuration(0.5, delay: 0, options: [UIViewAnimationOptions.Repeat, UIViewAnimationOptions.Autoreverse], animations: { () -> Void in self.cheerleadersImage.transform = CGAffineTransformMakeScale(1, 1); self.cheerleadersImage.alpha = 1}, completion: nil)
        
        reloadData()
        
    }
    
    func reloadData() {
        
        if team1Score > team2Score
        {
            victoryHeadline.text = "TEAM  1  WINS!"
        }
        else if team2Score > team1Score
        {
            victoryHeadline.text = "TEAM  2  WINS!"
        }
        else if team1Score == team2Score
        {
            victoryHeadline.text = "IT'S  A  TIE!"
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
