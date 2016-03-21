//
//  WalkthroughViewController.swift
//  Bluffer
//
//  Created by Blake Hudelson on 3/12/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 1280, height: 736)
        scrollView.delegate = self
        

        // Do any additional setup after loading the view.
    }

    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        
        pageControl.currentPage = page
//        if page == 3 {
//            pageControl.hidden = true
//            UIView.animateWithDuration(0.5, animations: {
//                
////                self.startButton.alpha = 1
//            })
//        }
    }
    
    @IBAction func onStartGame(sender: AnyObject) {
        
        performSegueWithIdentifier("StartGame", sender: self)
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
