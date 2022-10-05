//
//  main.swift
//  RPS
//
//  Created by Eduarda Pinheiro on 05/10/22.
//

import Foundation

//function, getUserChoice that will accept a single parameter, userInput of type, String
func getUserChoice(userInput: String) -> String {
    //this statements check the userInput if it is rock, paper and scissors
    if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
        return userInput
    } else {
        return ("You can only enter rock, paper, or scissors. Try again.")
    }
}

//Computer player
func getUserComputer() -> String {
    let randomNumber = Int.random(in: 0...2)
    switch randomNumber {
    case 0:
        return "rock"
    case 1:
        return "paper"
    case 3:
        return "scissors"
    default:
        return "Something went wrong"
    }
}

func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
    var decision = "It's a tie"
    switch userChoice {
    case "rock":
        if compChoice == "paper" {
            decision = "The computer won"
        } else if compChoice == "scissors" {
            decision = "The user won"
        }
    case "paper":
        if compChoice == "rock" {
            decision = "The user won"
        } else if compChoice == "scissors" {
            decision = "The computer won"
        }
        
    case "scissors":
        if compChoice == "rock" {
            decision = "The computer won"
        } else if compChoice == "paper" {
            decision = "The user won"
        }
        
    default:
        print("Something went wrong")
    }
    
    return decision
}

let userChoice = getUserChoice(userInput: "paper")
let compChoice = getUserComputer()

print("You threw:\(userChoice)")
print("The computer threw:\(compChoice)")
print(determineWinner(userChoice,compChoice))
