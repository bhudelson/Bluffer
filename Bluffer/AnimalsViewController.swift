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
        UIImage(named: "animals-bear.png")!,
        UIImage(named: "animals-cockerspaniel.png")!,
        UIImage(named: "animals-dog.png")!,
        UIImage(named: "animals-elephant.png")!,
        UIImage(named: "animals-horse.png")!,
        UIImage(named: "animals-jockey.png")!,
        UIImage(named: "animals-lion.png")!,
        UIImage(named: "animals-pug.png")!,
        UIImage(named: "animals-puppy.png")!,
        UIImage(named: "animals-smokey.png")!,
        UIImage(named: "animals-snail.png")!,
        UIImage(named: "animals-yeti.png")!
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
