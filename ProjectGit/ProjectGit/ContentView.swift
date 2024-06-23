//
//  ContentView.swift
//  ProjectGit
//
//  Created by hok191 on 23/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.red
                    .ignoresSafeArea()
                VStack (alignment:.leading){
                    Text("GUESS   THE NUMBER")
                        .font(.system(size: 65, weight: .heavy))
                        .foregroundStyle(.white)
                        .font(.system(size: 100))
                        .padding([.top,.bottom,.trailing], 20)
                    NavigationLink{
                        GamePage2(inputNum: .constant(0))
                    } label: {
                        Text("START")
                            .padding(.horizontal, 30)
                            .padding(.vertical , 10)
                            .background(.yellow)
                            .foregroundStyle(.white)
                            .font(.system(size: 32, weight: .bold))
                            .cornerRadius(15)
                    }
                    
                }
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
