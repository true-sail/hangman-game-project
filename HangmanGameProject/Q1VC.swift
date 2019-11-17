//
//  Q1VC.swift
//  HangManGameProject
//
//  Created by 家田真帆 on 2019/11/16.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class Q1VC: UIViewController {

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
        

//       question == "______"
        if selectedCategory == "sports" {
            categoryLabel.text = "sports"
            questionLabel.text = "_ _ _ _ _ _"
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
            
            if answer == "t" {
                questionLabel.text = "t _ _ _ _ _"
            } else if answer == "e" {
                questionLabel.text = "_ e _ _ _ _"
            } else if answer == "n" {
            questionLabel.text = "_ _ n n _ _"
            } else if answer == "i" {
             questionLabel.text = "_ _ _ _ i _"
            } else if answer == "s" {
                questionLabel.text = "_ _ _ _ _ s"
            } else {
                        count -= 1
                        countLabel.text = "\(count)"
                
                        if count <= 0 {
                    countLabel.text = "Game Over"
                }
                
            
            
                

            
            // tennisと全部を入力する欄を作る
            // tennisと入力されたらその値を飛ばして、その値とtennisが等しければ正解と表示、elseで不正解と表示でまた問題欄に戻るかゲームオーバー。
            }
        }
        
        
        
        
        
}
    @IBAction func finalAnswerButton(_ sender: UIButton) {
        if categoryLabel.text == "sports" {
                // 値を飛ばす
            
            let finalAnswer = answerTextField.text
                
                performSegue(withIdentifier: "toR1", sender: finalAnswer)
        }
    }
            

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                      // 矢印の名前がtoR1の場合
                       if segue.identifier == "toR1" {
                          
                           let R1VC = segue.destination as! R1VC
                
                           R1VC.finalAnswer = sender as! String
                            }
            }
            
            }
    


