//
//  ReviewImageViewController.swift
//  Bluffer
//
//  Created by Blake Hudelson on 3/21/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class ReviewImageViewController: UIViewController {

    @IBOutlet weak var ReviewView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ReviewView.image = currentImage

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDoneButton(sender: AnyObject) {
        
        dismissViewControllerAnimated(
            true, completion: nil)
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
