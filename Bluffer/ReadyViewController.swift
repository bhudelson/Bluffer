//
//  ReadyViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class ReadyViewController: UIViewController {

    @IBOutlet weak var tryLabel: UILabel!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var describeLabel: UILabel!
    
    @IBOutlet weak var team: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    var gameViewController: GameViewController!
    

    @IBAction func onReady(sender: AnyObject) {
        
        print("ReadyView - Team Describing: ", team.text)
        print("ReadyView - Current Round: ")

        
//        gameViewController.showImage()
        // Reveal the image / call GameViewController method "showImage"
        gameViewController.showImage()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        startButton.transform = CGAffineTransformMakeScale(0.9, 0.9)
        startButton.alpha = 0.6
        
        tryLabel.alpha = 0
        orLabel.alpha = 0
        describeLabel.alpha = 0
        
        
        
        UIView.animateWithDuration(1, delay: 3, options: [], animations: { () -> Void in self.describeLabel.alpha = 1; self.orLabel.alpha = 1; self.tryLabel.alpha = 1 }, completion: nil)
        
        UIView.animateWithDuration(1.2, delay: 0, options: [UIViewAnimationOptions.Repeat, UIViewAnimationOptions.Autoreverse], animations: { () -> Void in self.startButton.transform = CGAffineTransformMakeScale(1, 1); self.startButton.alpha = 1}, completion: nil)
        
        reloadData()
    }
    
    func reloadData() {
        if gameRound > 0 && gameRound % 2 == 0 {
            // Even Round = Team 2 describes
            team.text = "TEAM 2  GET  READY!"
        }
        else
        {
            // Odd Round = Team 1 describes
            team.text = "TEAM 1  GET  READY!"
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
