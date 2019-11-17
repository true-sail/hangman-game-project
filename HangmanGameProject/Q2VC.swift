//
//  Q2VC.swift
//  HangManGameProject
//
//  Created by 家田真帆 on 2019/11/17.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class Q2VC: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    var selectedCategory = ""
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBOutlet weak var countLabel: UILabel!
    var count = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 8
        countLabel.text = "\(count)"
        
        if selectedCategory == "sports" {
                   categoryLabel.text = "sports"
                   questionLabel.text = "_ _ _ _ _ _ _ _ _ _"
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
                    
        //        if answer != "t" || answer != "e" || answer != "n" || answer != "i" || answer != "s" {
                    
                    if answer == "b" {
                        questionLabel.text = "b _ _ _ _ _ _ _ _ _"
                    } else if answer == "a" {
                        questionLabel.text = "_ a _ _ _ _ _ a _ _"
                    } else if answer == "s" {
                    questionLabel.text = "_ _ s _ _ _ _ _ _ _"
                    } else if answer == "k" {
                     questionLabel.text = "_ _ _ k _ _ _ _ _ _"
                    } else if answer == "e" {
                        questionLabel.text = "_ _ _ _ e _ _ _ _ _"
                    } else if answer == "t" {
                        questionLabel.text = "_ _ _ _ _ t _ _ _ _"
                    } else if answer == "b" {
                        questionLabel.text = "_ _ _ _ _ _ b _ _ _"
                    } else if answer == "l" {
                        questionLabel.text = "_ _ _ _ _ _ _ _ l l"
                    } else {
                                count -= 1
                                countLabel.text = "\(count)"
                                if count <= 0 {
                                    countLabel.text = "Game Over"
                        }
            }
        }
    }
    
    @IBAction func finalAnswer(_ sender: UIButton) {
        if categoryLabel.text == "sports" {
                // 値を飛ばす
            
            let finalAnswer = answerTextField.text
                
                performSegue(withIdentifier: "toR2", sender: finalAnswer)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toR2" {
                  
                   let R2VC = segue.destination as! R2VC
        
                   R2VC.finalAnswer = sender as! String
                    }
    }
    
  

}
