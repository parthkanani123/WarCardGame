//  ContentView.swift
//  War Card Game
//
//  Created by parth kanani on 16/01/24.

import SwiftUI

struct GameView: View
{
    @StateObject var viewModel = GameViewModel()
    
    var body: some View
    {
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
                    Image(viewModel.playerCard)
                    Spacer()
                    Image(viewModel.cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                DealButton(viewModel: viewModel)
                
                Spacer()
                
                HStack
                {
                    Spacer()
                    
                    ScoreTable(name: "Player", score: viewModel.playerScore)
                    
                    Spacer()
                    
                    ScoreTable(name: "CPU", score: viewModel.cpuScore)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            .fullScreenCover(isPresented: $viewModel.isShowingWinScreen, content: {
                WinScreen(viewModel: viewModel)
            })
        }
    }
}

#Preview {
    GameView()
}
