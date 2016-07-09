//
//  BeginViewController.swift
//  Bluffer
//
//  Created by Blake Hudelson on 3/16/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class BeginViewController: UIViewController {

    @IBOutlet weak var imagesView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var imagesNames = ["combo1", "combo2", "combo3", "combo4"]
        
        
        var images = [UIImage]()
        
        
        for i in 0..<imagesNames.count{
            
            images.append(UIImage(named: imagesNames[i])!)
            
        }
        
        imagesView.animationImages = images
        imagesView.animationDuration = 3
        imagesView.startAnimating()
        
    }

//    override func viewDidAppear(animated: Bool) {
//    
//        var imagesNames = ["guy01", "guy02", "guy03", "guy04"]
//        
//        var images = [UIImage]()
//        
//        
//        for i in 0..<imagesNames.count{
//            
//            images.append(UIImage(named: imagesNames[i])!)
//            
//        }
//        
//        imagesView.animationImages = images
//        imagesView.animationDuration = 1.0
//        imagesView.startAnimating()
//        
//    }
    
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
