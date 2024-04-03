//
//  GameViewModel.swift
//  War Card Game
//
//  Created by parth kanani on 02/04/24.
//

import Foundation

final class GameViewModel: ObservableObject
{
    @Published var playerCard = "card7"
    @Published var cpuCard = "card13"
    
    @Published var playerScore = 0
    @Published var cpuScore = 0
    
    @Published var isShowingWinScreen: Bool = false
    
    func deal()
    {
        // Randomize the players card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        if playerCardValue > cpuCardValue
        {
            playerScore += 1
        }
        else if(cpuCardValue > playerCardValue)
        {
            cpuScore += 1
        }
        else
        {
            // Tie
        }
        
        if playerScore > 3 || cpuScore > 3
        {
            isShowingWinScreen = true
        }
    }
}
