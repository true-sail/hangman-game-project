//
//  scoreVC.swift
//  HangManGameProject
//
//  Created by 家田真帆 on 2019/11/18.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class scoreVC: UIViewController {

    @IBOutlet var scoreLabel: UILabel!
   
    @IBOutlet var commentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(score)問正解"
        if score == 3 {
            commentLabel.text = "すごい！"
            commentLabel.textColor = .red
        } else {
            commentLabel.text = ""
        }
    }
    
    @IBAction func retryButton(_ sender: UIButton) {
    }
    
    @IBAction func toHomeButton(_ sender: UIButton) {
    }
    

}
