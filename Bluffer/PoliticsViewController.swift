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
        UIImage(named: "politics-bush.png")!,
        UIImage(named: "politics-kim.png")!,
        UIImage(named: "politics-lincoln.png")!,
        UIImage(named: "politics-putin.png")!,
        UIImage(named: "politics-rushmore.png")!,
        UIImage(named: "politics-trump.png")!,
        UIImage(named: "politics-borat.png")!,
        UIImage(named: "politics-clinton.png")!,
        UIImage(named: "politics-dance.png")!,
        UIImage(named: "politics-obama.png")!,
        UIImage(named: "politics-rocky.png")!,
        UIImage(named: "politics-substitution.png")!
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
