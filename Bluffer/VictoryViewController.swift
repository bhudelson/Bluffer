//
//  VictoryViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class VictoryViewController: UIViewController {
    
    @IBOutlet weak var cheerImage: UIImageView!
    
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
        let BeginViewController = storyboard.instantiateInitialViewController()
        
        let application = UIApplication.sharedApplication()
        application.keyWindow?.rootViewController = BeginViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("VictoryViewController Did Load")
        
        
        var imagesNames = ["cheer1", "cheer2", "cheer3", "cheer4", "cheer5", "cheer6", "cheer7", "cheer8", "cheer9", "cheer10", "cheer11", "cheer12", "cheer13", "cheer14", "cheer15", "cheer16"]
        
        
        var images = [UIImage]()
        
        
        for i in 0..<imagesNames.count{
            
            images.append(UIImage(named: imagesNames[i])!)
            
        }
        
        cheerImage.animationImages = images
        cheerImage.animationDuration = 3
        cheerImage.startAnimating()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        print("VictoryViewController Did Appear")
        
        
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
