//
//  ContentView.swift
//  war card game
//
//  Created by rishav . on 02/07/25.
//

import SwiftUI

struct ContentView: View {
    
    
    var playercard = "card12"
    var cpucard = "card13"
    
    var playerscore:Int=0
    var cpuscore:Int=0
    var body: some View {
        ZStack{
            
            Image("background-plain")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                Button {
                    dealCard()
                }
                label:{
                    Image("button")
                        
                }
                .foregroundStyle(.white)
                Spacer()
                
                HStack{
                    Spacer()
                    VStack(){
                        Text("Player").font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerscore)).font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack{
                        Text("Computer").font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuscore)).font(.largeTitle)
                        
                    }
                    Spacer()
                }.foregroundStyle(.white)
                Spacer()
            }
            
        }
    }
    func dealCard(){
        print("Deal Card")
        
    }
    func rendomcard(){
        
    }
}

#Preview {
    ContentView()
}
