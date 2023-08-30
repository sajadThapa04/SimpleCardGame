//
//  ContentView.swift
//  War games
//
//  Created by Sajad Thapa on 19/8/2023.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()

                }
                Spacer()
                
                Button{
                    dealCards()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    VStack {
                        Text("Cpu")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    Spacer()
                   
                    }
                Spacer()
                
            }
        }
       
    }
    
    
    func dealCards() {
//        Randomize the player and cpu card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue  > cpuCardValue{
            playerScore += 1        }
        else if cpuCardValue > playerCardValue{
            cpuScore += 1
            
        }
        else{
//            tie
        }
//        update the Player and cpu score
        
//        Display who won

    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
