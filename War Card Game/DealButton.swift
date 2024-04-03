//
//  DealButton.swift
//  War Card Game
//
//  Created by parth kanani on 03/04/24.
//

import SwiftUI

struct DealButton: View 
{
    var viewModel: GameViewModel
    
    var body: some View
    {
        Button(
            action:
            {
                viewModel.deal()
            },
            
            label:
            {
                Image("button")
            }
        )
    }
}

//#Preview {
//    DealButton()
//}
