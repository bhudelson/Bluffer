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
        UIImage(named: "space-car.png")!,
        UIImage(named: "space-darth.png")!,
        UIImage(named: "space-dinosaurastronaut.png")!,
        UIImage(named: "space-dogastronaut.png")!,
        UIImage(named: "space-europe.png")!,
        UIImage(named: "space-giraffe.png")!,
        UIImage(named: "space-madonna.png")!,
        UIImage(named: "space-mcdonalds.png")!,
        UIImage(named: "space-motel.png")!,
        UIImage(named: "space-nixon.png")!,
        UIImage(named: "space-scarlett.png")!,
        UIImage(named: "space-yoda.png")!
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
