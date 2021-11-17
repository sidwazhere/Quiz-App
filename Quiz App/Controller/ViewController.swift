//
//  ViewController.swift
//  Quiz App
//
//  Created by Sideeq on 10/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questions: UILabel!
    
    var quizbrain = QuizBrain()


  
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
        //Define
        //Find the number of parameters
        //Mention the return
        //Return the calculation
    }

    @objc func updateUI(){
        
        questions.text = quizbrain.getQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        let userInput = sender.currentTitle!
        
        let checkAnswer = quizbrain.checkAnswer(userInput)
        
        if checkAnswer {
            
            sender.backgroundColor = UIColor.green
        }
        


        else {
            sender.backgroundColor = UIColor.red
        }
       
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
}

