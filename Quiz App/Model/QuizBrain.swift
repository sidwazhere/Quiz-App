//
//  QuizBrain.swift
//  Quiz App
//
//  Created by Sideeq on 11/10/21.
//

import Foundation


struct QuizBrain {
    
    var questionBank = [
        
        Questions(text: "5 + 2 = 9", anser: "False"),
        Questions(text: "9 - 2 = 8", anser: "False"),
        Questions(text: "2 + 3 = 5", anser: "True"),
        Questions(text: "1 - 1 = -1", anser: "False")
    
    
    ]
    
    
    var questionNumber = 0
    
    //Create a function for displaying question text
    //1. Define 2. Number of parameters 3.Return Type 4. return 5. call
    
    func getQuestion() -> String {
        
        return questionBank[questionNumber].text
        
        
    }
    
    func checkAnswer(_ userInput : String) -> Bool {
        
        if userInput == questionBank[questionNumber].anser {
            return true
        }
        
        else{
            return false
        }
    }
        
    mutating func nextQuestion() {
            if questionNumber + 1  < questionBank.count {
                
            questionNumber += 1
                
            }
            
            else {
                questionNumber = 0
            }
        }
}
