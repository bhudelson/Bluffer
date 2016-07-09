//
//  SpaceViewController.swift
//  Bluffer
//
//  Created by Mariya on 3/3/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class SpaceViewController: ImagesViewController {
    
    var spaceImages: [UIImage] = [
        UIImage(named: "bernie.png")!,
        UIImage(named: "brand.png")!,
        UIImage(named: "castanza.png")!,
        UIImage(named: "chewy.png")!,
        UIImage(named: "drake.png")!,
        UIImage(named: "jamaica.png")!,
        UIImage(named: "jarjar.png")!,
        UIImage(named: "musk.png")!,
        UIImage(named: "pirate.png")!,
        UIImage(named: "spaceinvader.png")!,
        UIImage(named: "spacejam.png")!,
        UIImage(named: "starbucks.png")!
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

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
