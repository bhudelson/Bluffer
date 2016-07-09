//
//  AnimalsViewController.swift
//  Bluffer
//
//  Created by Mariya on 3/3/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class AnimalsViewController: ImagesViewController {
    
    var animalsImages: [UIImage] = [
        UIImage(named: "bear.png")!,
        UIImage(named: "cat.png")!,
        UIImage(named: "goat.png")!,
        UIImage(named: "grasshopper.png")!,
        UIImage(named: "lion.png")!,
        UIImage(named: "lost.png")!,
        UIImage(named: "monkey.png")!,
        UIImage(named: "ostrich.png")!,
        UIImage(named: "pig.png")!,
        UIImage(named: "puppy.png")!,
        UIImage(named: "stuffedbear.png")!,
        UIImage(named: "trex.png")!
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
