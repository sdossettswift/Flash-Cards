//
//  ViewController.swift
//  Flash Cards
//
//  Created by Sarah Swift on 9/6/16.
//  Copyright © 2016 Sarah Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = ["What is my favorite color?", "What is the best code school?", "What was my first language?", "Who is my favorite cousin?"]
    let answers = ["Turquoise", "TIY", "Ruby", "Taylor"]
    var currentlyDisplayedQuestionNumber = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var questionsLabel: UILabel!
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBAction func revealAnswer(sender: AnyObject) {
        answerLabel.textColor = UIColor.blackColor()
    
    }

    @IBAction func nextQuestion(sender: AnyObject) {
        
        answerLabel.textColor = UIColor.whiteColor()
        questionsLabel.text = questions[currentlyDisplayedQuestionNumber]
        answerLabel.text = answers[currentlyDisplayedQuestionNumber]
        currentlyDisplayedQuestionNumber += 1
        if currentlyDisplayedQuestionNumber == questions.count {
            currentlyDisplayedQuestionNumber = 0
        }
        
    }

}


