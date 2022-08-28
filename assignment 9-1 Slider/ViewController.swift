//
//  ViewController.swift
//  assignment 9-1 Slider
//
//  Created by Ryan Lin on 2022/8/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ark: UIImageView!
    
    @IBOutlet weak var land: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //加入漸層背景
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.colors = [UIColor(red: 250/255, green: 250/255, blue: 125/255, alpha: 1).cgColor,UIColor(red: 186/255, green: 230/255, blue: 255/255, alpha: 1).cgColor,
            UIColor(red: 0/255, green: 103/255, blue: 220/255, alpha: 1).cgColor, UIColor(red: 4/255, green: 62/255, blue: 128/255, alpha: 1).cgColor]
        
        
        //insertSubLayer置於最底層，如是使addSubLayer將置於頂層。
        view.layer.insertSublayer(gradientLayer, at: 0)
      //加入鴿子GIF
        let doveImageView = UIImageView(frame: CGRect(x: 630, y: 60, width: 77, height: 60))
        
        view.addSubview(doveImageView)
        
        let doveAnimatedImage = UIImage.animatedImageNamed("44a4b319aa8c4a5193331f4574991267dmWHEQ0rOm3Bhg3u-", duration: 2)
        
        doveImageView.image = doveAnimatedImage
        
    }
//加入slider的IBAction
    @IBAction func move(_ sender: UISlider) {
        
        
        //改變方舟的X Y軸及大小
        ark.transform = CGAffineTransform.identity.translatedBy(x: 420*CGFloat(sender.value), y: 100*CGFloat(sender.value)).scaledBy(x: 4*CGFloat(sender.value), y: 4*CGFloat(sender.value))
        
        //改變透明度
        ark.alpha = CGFloat(sender.value*1)
        
        //改變陸地的X Y軸及大小
        land.transform = CGAffineTransform.identity.translatedBy(x: -300*CGFloat(sender.value)*0.3, y: -200*CGFloat(sender.value)*0.5).scaledBy(x: 2*CGFloat(sender.value), y: 3*CGFloat(sender.value))
        
    }
    
}

