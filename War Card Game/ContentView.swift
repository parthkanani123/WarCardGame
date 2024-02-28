//  ContentView.swift
//  War Card Game
//
//  Created by parth kanani on 16/01/24.

import SwiftUI

struct ContentView: View
{
    // property :- var playerCard = "card7"
    // property Wrapper :- @State
    // when the value is dependent on user we have to use @State
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View
    {
        // Spacer() -> if there are 3 spacer() in one container then it devide whole containers space into 3 equal parts
        
        
        // view container : ZStack,VStack,HStack
        // if we apply modifier to view container, it reflex all of view inside it
        
        ZStack
        {
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
            
            VStack
            {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack
                {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(
                    action: 
                    {
                        deal()
                    },
                    
                    label: 
                    {
                        Image("button")
                    }
                )
                
                Spacer()
                
                HStack
                {
                    Spacer()
                    
                    VStack
                    {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack
                    {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
            
    }
    
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
        
        if(playerScore == 3)
        {
           
        }
    }
}

#Preview {
    ContentView()
}
