//
//  WinScreen.swift
//  War Card Game
//
//  Created by parth kanani on 03/04/24.
//

import SwiftUI

struct WinScreen: View 
{
    var viewModel: GameViewModel
    
    var body: some View
    {
        ZStack
        {
            LinearGradient(
                gradient: Gradient(colors: [Color(.blue), Color(.lightGray)]),
                startPoint: .topLeading,
                endPoint: .bottom)
            .ignoresSafeArea()
            
            
            Spacer()
            
            VStack
            {
                HStack()
                {
                    Spacer()
                    
                    Button(action: {
                        viewModel.isShowingWinScreen = false
                        viewModel.playerScore = 0
                        viewModel.cpuScore = 0
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.largeTitle)
                            .foregroundStyle(.black)
                    })
                    .padding()
                }
                
                Spacer()

                if viewModel.playerScore > 3
                {
                    Text("Congrats You Won 🥳")
                        .scaleEffect(1.5)
                }
                else if viewModel.cpuScore > 3
                {
                    Text("You Lose 😩")
                        .scaleEffect(1.5)
                }
                
                Spacer()
            }
        }
    }
}

//#Preview {
//    WinScreen()
//}
