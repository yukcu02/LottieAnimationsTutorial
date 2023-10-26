//
//  ViewController.swift
//  LottieAnimation
//
//  Created by Furkan Yükcü on 26.10.2023.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var animationImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aniPlay()
    }

    func aniPlay() {
        
        let animation = LottieAnimationView(name: "animation")
        animation.contentMode = .scaleAspectFit
        animation.center = self.animationImageView.center
        animation.frame = self.animationImageView.bounds
        animation.loopMode = .loop
        animation.play()
        self.animationImageView.addSubview(animation)
    }
}

