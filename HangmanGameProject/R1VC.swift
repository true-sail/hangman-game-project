//
//  R1VC.swift
//  HangManGameProject
//
//  Created by 家田真帆 on 2019/11/17.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

 var score = 0

class R1VC: UIViewController {
   
    
    @IBOutlet weak var resultLabel: UILabel!
    var finalAnswer = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // カテゴリー別に回答を表示するのが難しい
//        if selectedCategory = "sports" {
//            answer = "正解はtennisでした！"
//        }
//

        if finalAnswer == "tennis" {
            resultLabel.text = "正解！"
           resultLabel.textColor = .red
            score += 1
        } else {
           resultLabel.text = "不正解"
            resultLabel.textColor = .blue
        }
    }
    
    @IBAction func didClickButton(_ sender: UIButton) {
     
    }
    
}
