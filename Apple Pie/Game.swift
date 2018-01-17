//
//  Game.swift
//  Apple Pie
//
//  Created by Student on 1/4/18.
//  Copyright © 2018 Jamie Chavez. All rights reserved.
//

import Foundation

// sets the properties the game has
struct Game {
    var word : String
    
    var incorrectMovesRemaining: Int
    
// Keeps track of the selectted letters
    var guessedLetters: [Character]
    
    // Recieves Character and adds it to the collection
    mutating func playerGuessed(letter:Character){
        guessedLetters.append(letter)
        if !word.characters.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
    
//Hides missing letters
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    




    
}





