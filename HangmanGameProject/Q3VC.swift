//
//  Q3VC.swift
//  HangManGameProject
//
//  Created by 家田真帆 on 2019/11/17.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class Q3VC: UIViewController {

    
    @IBOutlet var categoryLabel: UILabel!
    var selectedCategory = ""
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet var answerTextField: UITextField!
    
    @IBOutlet var countLabel: UILabel!
    var count = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()

        count = 8
        countLabel.text = "\(count)"
        
        if selectedCategory == "sports" {
                categoryLabel.text = "sports"
                questionLabel.text = "_ _ _ _ _ _ _ _ _"
            } else if selectedCategory  == "fruits" {
                categoryLabel.text = "fruits"
                questionLabel.text = "_ _ _ _ _ _ _ _ _ _"
            } else if selectedCategory  == "animals" {
                categoryLabel.text = "animals"
                questionLabel.text = "_ _ _ _"
            }
        }
        
    @IBAction func didClickButton(_ sender: UIButton) {
        
        if categoryLabel.text == "sports" {
            let answer = textField.text
            
            if answer == "b" {
                questionLabel.text = "b _ _ _ _ _ _ _ _"
            } else if answer == "a" {
                questionLabel.text = "_ a _ _ _ _ _ _ _"
            } else if answer == "d" {
            questionLabel.text = "_ _ d _ _ _ _ _ _"
            } else if answer == "m" {
             questionLabel.text = "_ _ m _ _ _ _ _ _"
            } else if answer == "i" {
                questionLabel.text = "_ _ _ _ i _ _ _ _"
            } else if answer == "n" {
            questionLabel.text = "_ _ _ _ _ n _ _ n"
            } else if answer == "t" {
            questionLabel.text = "_ _ _ _ _ _ t _ _"
            } else if answer == "o" {
                questionLabel.text = "_ _ _ _ _ _ _ o _"
            } else {
                        count -= 1
                        countLabel.text = "\(count)"
                
                        if count <= 0 {
                    countLabel.text = "Game Over"
                }
            }
        }
    }
        
    @IBAction func finalAnswerButton(_ sender: UIButton) {
        if categoryLabel.text == "sports" {
                // 値を飛ばす
            
            let finalAnswer = answerTextField.text
                
                performSegue(withIdentifier: "toR3", sender: finalAnswer)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toR3" {
                  
                   let R3VC = segue.destination as! R3VC
        
                   R3VC.finalAnswer = sender as! String
                    }
    }

}
