//
//  EightiesViewController.swift
//  Bluffer
//
//  Created by Blake Hudelson on 5/1/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class EightiesViewController: ImagesViewController {
    
    var eightiesImages: [UIImage] = [
        UIImage(named: "bowie.png")!,
        UIImage(named: "chunk.png")!,
        UIImage(named: "conan.png")!,
        UIImage(named: "cosby.png")!,
        UIImage(named: "wayne.png")!,
        UIImage(named: "cruise.png")!,
        UIImage(named: "hand.png")!,
        UIImage(named: "jolt.png")!,
        UIImage(named: "lasers.png")!,
        UIImage(named: "pickle.png")!,
        UIImage(named: "toes.png")!,
        UIImage(named: "turn.png")!
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
