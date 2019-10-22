//
//  ViewController.swift
//  Project 15 - Animation
//
//  Created by Sean Williams on 22/10/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView: UIImageView!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
        
    }

    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: {
            switch self.currentAnimation {
            case 0 :
                break
            default:
                break
            }
        }) { finshed in
            sender.isHidden = false
        }
        
        currentAnimation += 1
        
        if currentAnimation > 7 {
            currentAnimation = 0
        }
        
    }
    
}

