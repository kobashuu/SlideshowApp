//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 小林秀太 on 2017/03/29.
//  Copyright © 2017年 Shuta Kobayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!

    var timer: Timer!
    var timer_sec: Double = 0
    
    var countNum = 0
    
    var ImageArray = ["apple_an_evolution_in_photos_000.jpg","apple_an_evolution_in_photos_001.jpg","mac-128k.jpg","apple_an_evolution_in_photos_023.jpg","apple_an_evolution_in_photos_027.jpg","apple_an_evolution_in_photos_029.jpg","apple_an_evolution_in_photos_038.jpg","apple_an_evolution_in_photos_043.jpg"]
    
    var imageCount = 0
    
    @IBOutlet weak var fowordbtn: UIButton!
    @IBOutlet weak var backbtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ExpandedViewController:ExpandedViewController = segue.destination as! ExpandedViewController
        
        ExpandedViewController.imageCount = imageCount
        
        if timer != nil {
            self.timer.invalidate()
            self.timer = nil
        }
    }

    @IBAction func onTapImage(_ sender: Any) {
           }

    @IBAction func proceedPhoto(_ sender: Any) {
        imageCount += 1
        if imageCount < 8 {
            let firstImage: UIImage = UIImage(named: ImageArray[imageCount])!
            Image.image = firstImage
        } else {
            imageCount = 0
            let firstImage: UIImage = UIImage(named: ImageArray[imageCount])!
            Image.image = firstImage
        }
    }
    
    @IBAction func playPhoto(_ sender: Any) {
        if timer == nil  {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(proceedPhoto), userInfo: nil, repeats: true)
            
                fowordbtn.isEnabled = false
                backbtn.isEnabled = false
            
        } else {
            self.timer.invalidate()
            self.timer = nil
            fowordbtn.isEnabled = true
            backbtn.isEnabled = true

        }
    }
    
    @IBAction func backphoto(_ sender: Any) {
        imageCount -= 1
        if imageCount >= 0 {
            let firstImage = UIImage(named: ImageArray[imageCount])
            Image.image = firstImage
        } else {
            imageCount = 7
            let firstImage: UIImage = UIImage(named: ImageArray[imageCount])!
            Image.image = firstImage
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }

}

