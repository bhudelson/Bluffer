//
//  ReadyViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class ReadyViewController: UIViewController {

    @IBOutlet weak var team: UILabel!
    
    var gameViewController: GameViewController!
    
    @IBAction func onReady(sender: AnyObject) {
        
        print("ReadyView - Team Describing: ", team.text)
        print("ReadyView - Current Round: ", round)

        
//        gameViewController.showImage()
        // Reveal the image / call GameViewController method "showImage"
        NSNotificationCenter.defaultCenter().postNotificationName("show", object: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        reloadData()
    }
    
    func reloadData() {
        if round > 0 && round % 2 == 0 {
            // Even Round = Team 2 describes
            team.text = "Team 2"
        }
        else
        {
            // Odd Round = Team 1 describes
            team.text = "Team 1"
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
