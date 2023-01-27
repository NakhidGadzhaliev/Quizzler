//
//  MultiQuizBrain.swift
//  Quizzler
//
//  Created by Нахид Гаджалиев on 27.01.2023.
//

import Foundation

struct MultiQuizBrain {
    let multiQuiz = [
        MultiQuestion(text: "Which is the largest organ in the human body?", answers: ["Heart", "Skin", "Large Intestine"], rightAnswer: "Skin"),
        MultiQuestion(text: "Five dollars is worth how many nickels?", answers: ["25", "50", "100"], rightAnswer: "100"),
        MultiQuestion(text: "What do the letters in the GMT time zone stand for?", answers: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], rightAnswer: "Greenwich Mean Time"),
        MultiQuestion(text: "What is the French word for 'hat'?", answers: ["Chapeau", "Écharpe", "Bonnet"], rightAnswer: "Chapeau"),
        MultiQuestion(text: "In past times, what would a gentleman keep in his fob pocket?", answers: ["Notebook", "Handkerchief", "Watch"], rightAnswer: "Watch"),
        MultiQuestion(text: "How would one say goodbye in Spanish?", answers: ["Au Revoir", "Adiós", "Salir"], rightAnswer: "Adiós"),
        MultiQuestion(text: "Which of these colours is NOT featured in the logo for Google?", answers: ["Green", "Orange", "Blue"], rightAnswer: "Orange"),
        MultiQuestion(text: "What alcoholic drink is made from molasses?", answers: ["Rum", "Whisky", "Gin"], rightAnswer: "Rum"),
        MultiQuestion(text: "What type of animal was Harambe?", answers: ["Panda", "Gorilla", "Crocodile"], rightAnswer: "Gorilla"),
        MultiQuestion(text: "Where is Tasmania located?", answers: ["Indonesia", "Australia", "Scotland"], rightAnswer: "Australia")
        
    ]
    
    var score = 0
    var questionNumber = 0
    
    func getQuestion() -> String {
        return multiQuiz[questionNumber].text
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == multiQuiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(multiQuiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getAnswers() -> [String] {
        return multiQuiz[questionNumber].answers
    }
    
    mutating func getNextQuestion() {
        if questionNumber < multiQuiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}
