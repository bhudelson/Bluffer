//
//  GameVariables.swift
//  Bluffer
//
//  Created by Mariya on 2/29/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//



import Foundation
import UIKit

// GAME TRACKING
var newGame = false
var round = 0
var totalRounds = 4

var category = String("none")

var team1Score = 0
var team2Score = 0

//Duration in seconds of image guess time
var gameTime = 5

//Used to track whether a team scored a point in the current round
var correctGuess : Bool = false

func resetGame() {
    
    print("resetGame function called")
    
    round = 0
    category = "none"
    team1Score = 0
    team2Score = 0
    correctGuess = false
    
}




