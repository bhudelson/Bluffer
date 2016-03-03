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
        UIImage(named: "random-bill.png")!,
        UIImage(named: "random-cage.png")!,
        UIImage(named: "random-carey.png")!,
        UIImage(named: "random-cricket.png")!,
        UIImage(named: "random-diesel.png")!,
        UIImage(named: "random-freeman.png")!,
        UIImage(named: "random-jagger.png")!,
        UIImage(named: "random-leno.png")!,
        UIImage(named: "random-putin.png")!,
        UIImage(named: "random-sandler.png")!,
        UIImage(named: "random-valentinator.png")!,
        UIImage(named: "random-wilson.png")!
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
