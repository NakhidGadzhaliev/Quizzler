//
//  MultiQuestion.swift
//  Quizzler
//
//  Created by Нахид Гаджалиев on 27.01.2023.
//

import Foundation

struct MultiQuestion {
    var text: String
    var answers: [String]
    var rightAnswer: String
    
    init(text: String, answers: [String], rightAnswer: String) {
        self.text = text
        self.answers = answers
        self.rightAnswer = rightAnswer
    }
}

