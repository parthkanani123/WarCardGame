//
//  ScoreTable.swift
//  War Card Game
//
//  Created by parth kanani on 03/04/24.
//

import SwiftUI

struct ScoreTable: View 
{
    var name: String
    var score: Int
    
    var body: some View
    {
        VStack
        {
            Text(name)
                .font(.headline)
                .padding(.bottom, 10.0)
                
                
            Text(String(score))
                .font(.largeTitle)
        }
    }
}

#Preview {
    ScoreTable(name: "Player", score: 5)
}
