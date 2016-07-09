//
//  PoliticsViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class PoliticsViewController: ImagesViewController {
    
    var politicsImages: [UIImage] = [
        UIImage(named: "bigfoot.png")!,
        UIImage(named: "bunny.png")!,
        UIImage(named: "bush.png")!,
        UIImage(named: "cheney.png")!,
        UIImage(named: "cruise.png")!,
        UIImage(named: "dino.png")!,
        UIImage(named: "horse.png")!,
        UIImage(named: "putin.png")!,
        UIImage(named: "putin2.png")!,
        UIImage(named: "rice.png")!,
        UIImage(named: "thriller.png")!,
        UIImage(named: "trump.png")!
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("# of images in politicsImages array: ", politicsImages.capacity)
    
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
