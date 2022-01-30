//
//  ContentView.swift
//  practice
//
//  Created by Umangkumar Patel on 1/30/22.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard  = "card5"
    @State private var cpuCard     = "card9"
    @State private var playerScore = 0
    @State private var cpuScore    = 0
    
    var body: some View {
        
        ZStack{
            Image("background")
                .ignoresSafeArea()
            
            VStack{
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
                
                Button(action: {
                    // Generate random number
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if (playerRand > cpuRand){
                        playerScore += 1
                    }
                    if (cpuRand > playerRand){
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Button(action: {
                    playerScore = 0
                    cpuScore = 0
                }, label: {
                    Text("Reset")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing])
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(cpuScore))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
