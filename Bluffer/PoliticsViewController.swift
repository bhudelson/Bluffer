//
//  PoliticsViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class PoliticsViewController: UIViewController {
    
    var politicsImages: [UIImage] = [
        UIImage(named: "bush.png")!,
        UIImage(named: "kim.png")!,
        UIImage(named: "lincoln.png")!,
        UIImage(named: "putin.png")!,
        UIImage(named: "rushmore.png")!,
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
