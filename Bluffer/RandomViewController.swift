//
//  RandomViewController.swift
//  Bluffer
//
//  Created by Mariya on 3/3/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class RandomViewController: ImagesViewController {
    
    var randomImages: [UIImage] = [
        UIImage(named: "action.png")!,
        UIImage(named: "beard.png")!,
        UIImage(named: "cow.png")!,
        UIImage(named: "donuts.png")!,
        UIImage(named: "lipstick.png")!,
        UIImage(named: "mac.png")!,
        UIImage(named: "moonshine.png")!,
        UIImage(named: "moss.png")!,
        UIImage(named: "plane.png")!,
        UIImage(named: "skeleton.png")!,
        UIImage(named: "tiny.png")!,
        UIImage(named: "troll.png")!
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("RandomViewController Loaded. Image array size: ", randomImages.capacity)

        // Do any additional setup after loading the view.
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
