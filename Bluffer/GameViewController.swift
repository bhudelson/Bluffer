//
//  GameViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    //Child ViewControllers - DECLARATION
    var categoryViewController: CategoryViewController!
    var readyViewController: ReadyViewController!
    var guessViewController: GuessViewController!
    var scoreViewController: ScoreViewController!
    var victoryViewController: VictoryViewController!
    
    //Category Child View Controllers - DECLARATION
    var politicsViewController: PoliticsViewController!
    var spaceViewController: SpaceViewController!
    var animalsViewController: AnimalsViewController!
    var randomViewController: RandomViewController!
    
    var currentCategoryViewController: ImagesViewController!
    
    //Timer-related variables
    var currentTime: Int! = 20
    var timer: NSTimer!
    
    @IBOutlet var contentView: UIView!
    
    func startRound() {
        
        //Runs for the 1st round ONLY
        
        print("First Round Started")
        
        round = ++round
        
        print("Current Round: ", round)
        
        readyViewController.view.hidden = false
        readyViewController.reloadData()
    }
    
    func nextRound() {
        
        //Runs for all except 1st round
        
        scoreViewController.view.hidden = true
        guessViewController.view.hidden = true
        
        round = ++round
        
        
        if round > totalRounds
        {
            print("Game Over")
            victoryViewController.reloadData()
            victoryViewController.view.hidden = false
            
        }
        else
        {
            
            print("Round Started")
            
            print("Current Round: ", round)
            
            readyViewController.reloadData()
            readyViewController.view.hidden = false
            
        }

        
    }

    
    func categorySelected(){
        

        print("Category Selected: ", category)
        
        currentCategoryViewController.reloadData()
        
        switch category {
        case "politics"  :

            // Add PoliticsViewController as child of GameViewController
            // Set it as currentCategoryViewController
            
            print("PoliticsViewController added as child to GameViewController")
            
            politicsViewController.view.hidden = true
            addChildViewController(politicsViewController)
            contentView.addSubview(politicsViewController.view)
            politicsViewController.didMoveToParentViewController(self)
            
            currentCategoryViewController = politicsViewController
            currentCategoryViewController.imageArray = politicsViewController.politicsImages
            
        case "animals"  :
            
            // Add AnimalsViewController as child of GameViewController
            // Set it as currentCategoryViewController
            
            print("AnimalsViewController added as child to GameViewController")
            
            animalsViewController.view.hidden = true
            addChildViewController(animalsViewController)
            contentView.addSubview(animalsViewController.view)
            animalsViewController.didMoveToParentViewController(self)
            
            currentCategoryViewController = animalsViewController
            currentCategoryViewController.imageArray = animalsViewController.animalsImages
            
        case "space"  :
            
            // Add SpaceViewController as child of GameViewController
            // Set it as currentCategoryViewController
            
            print("SpaceViewController added as child to GameViewController")
            
            spaceViewController.view.hidden = true
            addChildViewController(spaceViewController)
            contentView.addSubview(spaceViewController.view)
            spaceViewController.didMoveToParentViewController(self)
            
            currentCategoryViewController = spaceViewController
            currentCategoryViewController.imageArray = spaceViewController.spaceImages
            
        case "random"  :
            
            // Add RandomViewController as child of GameViewController
            // Set it as currentCategoryViewController
            
            print("RandomViewController added as child to GameViewController")
            
            randomViewController.view.hidden = true
            addChildViewController(randomViewController)
            contentView.addSubview(randomViewController.view)
            randomViewController.didMoveToParentViewController(self)
            
            currentCategoryViewController = randomViewController
            currentCategoryViewController.imageArray = randomViewController.randomImages
            
        case "tropical"  :
            print("Replace this line with tropical viewcontroller addition to parent")
            
        //ADD MORE CASES FOR ALL OF OUR CATEGORIES

        default :
            print( "ERROR OCCURRED / NO CATEGORY SELECTED")
        }
        
        
        //Hide Category View Controller
        categoryViewController.view.hidden = true

        startRound()
    }
    
    func showImage() {
        
        print("Image Showing")
        
        readyViewController.view.hidden = true
        
        //Clear the previous image from earlier round
        currentCategoryViewController.clearImageView()

        currentCategoryViewController.view.alpha = 1 
        currentCategoryViewController.view.hidden = false
        
        currentCategoryViewController.setCurrentImage(currentCategoryViewController.selectRandomIndex())
        
        //Select random index that hasn't been selected before during gameplay
        
        UIView.animateWithDuration(3, delay: 0, options:[] , animations: { () -> Void in
            
            self.currentCategoryViewController.imageView.alpha = 0
            
            }, completion: { (Bool) -> Void in
                
                self.currentCategoryViewController.view.hidden = true
                self.guessViewController.view.hidden = false
                
        })
        
    }
    
    func trackPoint() {
        
        if correctGuess == true && round % 2 == 0 {
            
            //Round is EVEN. Team 2 described and Team 1 guessed correctly
            //So team 1 gets a point
            

            team1Score = ++team1Score
            
            print("Round is Even. Team 2 got image, Team 1 guesses correctly")
            print("Team 1 Score: ", team1Score)
        }
        else if correctGuess == true && round % 2 != 0
        {
            //Round is ODD. Team 1 described and Team 2 guessed
            //So team 2 gets a point
            
            team2Score = ++team2Score
            
            print("Round is Odd. Team 1 got image, Team 2 guessed correctly")
            print("Team 2 Score: ", team2Score)
            
        }
        else if correctGuess == false && round % 2 == 0 {
            
            //Round is EVEN. Team 2 described and Team 1 guessed incorrectly
            //So team 2 gets a point
            
            team2Score = ++team2Score
            
            print("Round is Even. Team 2 got image, Team 1 guessed INCORRECTLY")
            print("Team 2 Score: ", team2Score)
        }
        else if correctGuess == false && round % 2 != 0
        {
            //Round is ODD. Team 1 described and Team 2 guessed incorrectly
            //So team 1 gets a point
            
            team1Score = ++team1Score
            
            print("Round is Odd. Team 1 got image, Team 2 guessed INCORRECTLY")
            print("Team 1 Score: ", team1Score)
            
        }
        else
        {
            print("ERROR OCCURRED") 
        }

        guessViewController.view.hidden = true
    
        showScoreboard()
        
    }
    
    
    func showScoreboard() {
        
        scoreViewController.view.hidden = false
        scoreViewController.reloadData()
        
    }
    
    func restart() {
        
        print("Restart function in GameViewController called")
        
        victoryViewController.view.hidden = true
        
        categoryViewController.view.hidden = false
        
        resetGame()
    
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Game View Controller Loaded")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Child ViewControllers - INSTANTIATION
        
        categoryViewController = storyboard.instantiateViewControllerWithIdentifier("CategoryViewController") as! CategoryViewController
        categoryViewController.gameViewController = self
        
        readyViewController = storyboard.instantiateViewControllerWithIdentifier("ReadyViewController") as! ReadyViewController
        readyViewController.gameViewController = self
        
        guessViewController = storyboard.instantiateViewControllerWithIdentifier("GuessViewController") as! GuessViewController
        guessViewController.gameViewController = self
        
        scoreViewController = storyboard.instantiateViewControllerWithIdentifier("ScoreViewController") as! ScoreViewController
        scoreViewController.gameViewController = self
        
        victoryViewController = storyboard.instantiateViewControllerWithIdentifier("VictoryViewController") as! VictoryViewController
        victoryViewController.gameViewController = self
    
        
        // Category View Controllers - INSTANTIATION
        
        currentCategoryViewController = storyboard.instantiateViewControllerWithIdentifier("ImagesViewController") as! ImagesViewController
        currentCategoryViewController.gameViewController = self
        
        politicsViewController = storyboard.instantiateViewControllerWithIdentifier("PoliticsViewController") as! PoliticsViewController
        politicsViewController.gameViewController = self
        
        spaceViewController = storyboard.instantiateViewControllerWithIdentifier("SpaceViewController") as! SpaceViewController
        spaceViewController.gameViewController = self
        
        animalsViewController = storyboard.instantiateViewControllerWithIdentifier("AnimalsViewController") as! AnimalsViewController
        animalsViewController.gameViewController = self
        
        randomViewController = storyboard.instantiateViewControllerWithIdentifier("RandomViewController") as! RandomViewController
        randomViewController.gameViewController = self
        
        // Add Category View Controller as child
        addChildViewController(categoryViewController)
        contentView.addSubview(categoryViewController.view)
        categoryViewController.didMoveToParentViewController(self)
        
        //Add Current Category View Controller as child
        addChildViewController(currentCategoryViewController)
        contentView.addSubview(currentCategoryViewController.view)
        currentCategoryViewController.didMoveToParentViewController(self)
        currentCategoryViewController.view.hidden = true
        
        // Add Ready View Controller as child & HIDE
        addChildViewController(readyViewController)
        contentView.addSubview(readyViewController.view)
        readyViewController.didMoveToParentViewController(self)
        readyViewController.view.hidden = true
        
        // Add Guess View Controller as child & HIDE
        addChildViewController(guessViewController)
        contentView.addSubview(guessViewController.view)
        guessViewController.didMoveToParentViewController(self)
        guessViewController.view.hidden = true
        
        // Add Score View Controller as child & HIDE
        addChildViewController(scoreViewController)
        contentView.addSubview(scoreViewController.view)
        scoreViewController.didMoveToParentViewController(self)
        scoreViewController.view.hidden = true
        
        // Add Victory View Controller as child & HIDE
        addChildViewController(victoryViewController)
        contentView.addSubview(victoryViewController.view)
        victoryViewController.didMoveToParentViewController(self)
        victoryViewController.view.hidden = true
        
        
        /* Deprecated code using Notifications for passing data between classes 

        //Notification for communicating category selection from child view to parent view
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "categorySelected:", name:"category", object: nil)
        
        //Notification for tracking when player taps "ready" to show image
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "showImage:", name:"show", object: nil)
        
        //Notification for tracking when a team guesses correctly and gets a point
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "trackPoint:", name:"point", object: nil)
        
        //Notification for tracking when no points are scored, load scoreboard from GuessViewController
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "showScoreboard:", name:"scores", object: nil)
        
        //Notification for tracking when it's time to pass to other team / start new round
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "nextRound:", name:"switch", object: nil)
        
        //Notification for tracking when restart game from Victory screen
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "restart:", name:"restart", object: nil)

        */
        
        
    }
    
    func onTimer() {
        //timerLabel.text = "\(currentTime)"
        
        currentTime = currentTime - 1
        
        if currentTime < 0 {
            stopTimer()
        }
        
    }
    
    func startTimer() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onTimer", userInfo: nil, repeats: true)
        currentTime = 20
    }
    
    func stopTimer() {
        timer.invalidate()
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        print("Game View Controller Did Appear")
        
        
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
