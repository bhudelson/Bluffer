//
//  ImagesViewController.swift
//  Bluffer
//
//  Created by Mariya on 3/3/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class ImagesViewController: UIViewController {
    
    var gameViewController: GameViewController!
    
    var imageArray: [UIImage]!
    
    var selectedIndexArray: [Int]!
    
    var currentIndex: Int!
    
    var imageView: UIImageView!
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    func setCurrentImage(imageIndex: Int) {
        
        let currentImage = imageArray[imageIndex]
        
        imageView = UIImageView(image: currentImage)
        
        imageView.frame = self.view.frame
        
        contentView.addSubview(imageView)
        
    }
    
    func clearImageView() {
        
        for view in contentView.subviews{
            view.removeFromSuperview()
        }

    }
    
    func selectRandomIndex() -> Int {
        
        //Selects a random integer between 0 and selectedIndexArray.capacity - 1
        //Repeats if integer has previously been selected
        
        currentIndex = Int(arc4random_uniform(UInt32(imageArray.capacity)))
        
        print("OUTSIDE WHILE - Current Index: ", currentIndex)
        print("Previously chosen? ", selectedIndexArray.contains(currentIndex))
        
        while(selectedIndexArray.contains(currentIndex))
        {
            print("Index previously picked. Selecting again")
            currentIndex = Int(arc4random_uniform(UInt32(imageArray.capacity)))
            print("New currentIndex: ", currentIndex)
        }
        
        //Add current index to the selected array
        selectedIndexArray.append(currentIndex)
        
        return currentIndex
        
    }
    
    func reloadData() {
        
        imageArray.removeAll()
        selectedIndexArray.removeAll()
        timerLabel.text = String(gameTime)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray = []
        selectedIndexArray = []
        
        timerLabel?.text = String(gameTime)
        
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
