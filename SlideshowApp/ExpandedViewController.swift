//
//  ExpandedViewController.swift
//  SlideshowApp
//
//  Created by 小林秀太 on 2017/03/29.
//  Copyright © 2017年 Shuta Kobayashi. All rights reserved.
//

import UIKit

class ExpandedViewController: UIViewController {

    
    @IBOutlet weak var Image: UIImageView!
    
     var ImageArray = ["apple_an_evolution_in_photos_000.jpg","apple_an_evolution_in_photos_001.jpg","mac-128k.jpg","apple_an_evolution_in_photos_023.jpg","apple_an_evolution_in_photos_027.jpg","apple_an_evolution_in_photos_029.jpg","apple_an_evolution_in_photos_038.jpg","apple_an_evolution_in_photos_043.jpg"]
    
    var imageCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let firstImage: UIImage = UIImage(named: ImageArray[imageCount])!
        Image.image = firstImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(_ sender: Any) {
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
