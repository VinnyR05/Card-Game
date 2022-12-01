//
//  ViewController.swift
//  CardGame
//
//  Created by Owner on 6/25/20.
//  Copyright © 2020 Vinayak Ranjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var LeftCardView: UIImageView!
    
    @IBOutlet weak var RightCardView: UIImageView!
    
    @IBOutlet weak var PlayerScore: UILabel!
    
    @IBOutlet weak var CPUScore: UILabel!
    
    @IBOutlet weak var StartScreenBackground: UIImageView!
    
    @IBOutlet weak var StartScreenLogo: UIImageView!
    
    @IBOutlet weak var StartScreenButton: UIButton!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    }
    
    func deal(){
        let leftNumber:Int = Int.random(in: 2...14)
        let rightNumber:Int = Int.random(in: 2...14)
        
        
        LeftCardView.image = UIImage(named: "card\(leftNumber)")
        RightCardView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber
        {
            leftScore += 1
            
            PlayerScore.text = String(leftScore)
        }
        else
        {
            rightScore += 1
            
            CPUScore.text = String(rightScore)
        }
    }
    
    @IBAction func DealButton(_ sender: Any) {
        
        deal()
        
    }
    
    
    @IBAction func StartButton(_ sender: Any) {
        
        StartScreenLogo.isHidden = true
        StartScreenBackground.isHidden = true
        StartScreenButton.isHidden = true
    }
    
}

