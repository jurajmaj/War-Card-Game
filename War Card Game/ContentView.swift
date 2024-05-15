//
//  ContentView.swift
//  War Card Game
//
//  Created by Juraj Maják on 03/05/2024.
//

import SwiftUI


struct ContentView: View {
    
    @State var playerCard: String = "card7"
    @State var cpuCard: String = "card12"
    
    @State var playerScore: Int = 0;
    @State var cpuScore: Int = 0;
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button{
                    deal()
                } label: {
                    Image("dealbutton")
                }
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
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
    
    func deal() {
        let playerCardVal = Int.random(in: 2...14)
        let cpuCardVal = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardVal)
        cpuCard = "card" + String(cpuCardVal)
        
        if playerCardVal > cpuCardVal {
            playerScore += 1
        } 
        else if cpuCardVal > playerCardVal {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
