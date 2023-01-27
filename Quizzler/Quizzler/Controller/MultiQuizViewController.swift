//
//  MultiQuizViewController.swift
//  Quizzler
//
//  Created by Нахид Гаджалиев on 27.01.2023.
//

import UIKit

class MultiQuizViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionTitle: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = MultiQuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIUpdate()
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        guard let userAnswer = sender.titleLabel?.text else { return }
        
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UIUpdate), userInfo: nil, repeats: false)
        quizBrain.getNextQuestion()
    }
    
    @objc func UIUpdate() {
        
        firstChoiceButton.setTitle(quizBrain.getAnswers()[0], for: .normal)
        secondChoiceButton.setTitle(quizBrain.getAnswers()[1], for: .normal)
        thirdChoiceButton.setTitle(quizBrain.getAnswers()[2], for: .normal)
        
        questionTitle.text = quizBrain.getQuestion()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        firstChoiceButton.backgroundColor = .clear
        secondChoiceButton.backgroundColor = .clear
        thirdChoiceButton.backgroundColor = .clear
        
        progressBar.progress = quizBrain.getProgress()
        
    }
    
}
