//
//  TropicalViewController.swift
//  Bluffer
//
//  Created by Blake Hudelson on 5/1/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class TropicalViewController: ImagesViewController {
    
    var tropicalImages: [UIImage] = [
        UIImage(named: "baby.png")!,
        UIImage(named: "banana1.png")!,
        UIImage(named: "bananahill.png")!,
        UIImage(named: "bananaman.png")!,
        UIImage(named: "dog.png")!,
        UIImage(named: "fish.png")!,
        UIImage(named: "jack.png")!,
        UIImage(named: "leo.png")!,
        UIImage(named: "ludacris.png")!,
        UIImage(named: "monkeysmile.png")!,
        UIImage(named: "stiller.png")!,
        UIImage(named: "watermelon.png")!
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
