//
//  QuestionModel.swift
//  Quizzler
//
//  Created by Нахид Гаджалиев on 27.01.2023.
//

import Foundation

struct Question {
    var text: String
    var answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
}
