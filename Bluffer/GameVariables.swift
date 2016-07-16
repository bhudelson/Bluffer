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
var gameRound = 0
var totalRounds = 3

var category = String("none")

var team1Score = 0
var team2Score = 0

//Duration in seconds of image guess time
var gameTime = 20

//Used to track whether a team scored a point in the current round
var correctGuess : Bool = false

func resetGame() {
    
    print("resetGame function called")
    
    gameRound = 0
    category = "none"
    team1Score = 0
    team2Score = 0
    correctGuess = false
    
}




