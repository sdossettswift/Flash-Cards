//
//  ViewController.swift
//  Flash Cards
//
//  Created by Sarah Swift on 9/6/16.
//  Copyright © 2016 Sarah Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = ["Taylor Swift's second album", "Taylor Swift's fourth album", "Taylor Swift's most recent boyfriend", "Taylor Swift's hometown", "Sarah Swift's favorite Taylor Swift album", "Taylor's middle name", "TSwift's BDay", "TSwift's Estimated Net Worth (as of June 2016)"]
    
    let answers = ["Fearless", "Red", "Tom Hiddleston. RIP HIDDLESWIFT", "Wyomissing, Pennsylvania", "1989", "Alison", "December 13, 1989", "$250 million"]

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


