//
//  R2VC.swift
//  HangManGameProject
//
//  Created by 家田真帆 on 2019/11/17.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class R2VC: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    var finalAnswer = ""
    var selectedCategory = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if finalAnswer == "basketball" {
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
