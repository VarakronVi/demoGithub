//
//  GamePage2.swift
//  ProjectGit
//
//  Created by hok191 on 23/6/2567 BE.
//

import SwiftUI

struct guessData {
    var guessNumber: String = "XXXXXXXX"
    var symbol: String = "none"
    var showArrow: Bool = false
}

struct GamePage2: View {
    @Binding var inputNum: Int
    @State
    var number: Int = Int.random(in: 0...99)
    
    @State var guess1 = guessData()
    @State var guess2 = guessData()
    @State var guess3 = guessData()
    @State var guess4 = guessData()
    @State var guess5 = guessData()
    
    @State var currentGuess = ""
    @State var currentRound = 0
    
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            VStack(spacing: 0) {
                ZStack (alignment:.center){
                    Text("GUESS THE    NUMBER")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                        .padding(.vertical , 10)
                        .padding(.top, 50)
                        .background(.yellow)
                        .foregroundStyle(.white)
                        .font(.system(size: 32, weight: .heavy))
                        .cornerRadius(15)
                    Text("From 0 to 99")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 15)
                        .padding(.vertical , 8)
                        .background(.white)
                        .foregroundStyle(.red)
                        .font(.system(size: 25, weight: .bold))
                        .cornerRadius(20)
                        .frame(minWidth: 0, maxHeight: 120, alignment: .topLeading)
                    
                }
                Text(currentGuess)
                    .padding()
                    .font(.title)
                    .foregroundStyle(.white)
                
                HStack{
                    VStack{
                        ZStack{
                            Text(guess1.showArrow ? "U" : "D")
                            HStack{
                                Circle()
                                    .stroke(.white, lineWidth: 1)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(.red)
                                Text(guess1.guessNumber)
                            }
                        }
                        ZStack{
                            Text(guess2.showArrow ? "U" : "D")
                            HStack{
                                Circle()
                                    .stroke(.white, lineWidth: 1)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(.red)
                                Text(guess2.guessNumber)
                            }
                        }
                        ZStack{
                            Text(guess2.showArrow ? "U" : "D")
                            HStack{
                                Circle()
                                    .stroke(.white, lineWidth: 1)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(.red)
                                Text(guess3.guessNumber)
                            }
                        }
                        ZStack{
                            Text(guess4.showArrow ? "U" : "D")
                            HStack{
                                Circle()
                                    .stroke(.white, lineWidth: 1)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(.red)
                                Text(guess4.guessNumber)
                            }
                        }
                        ZStack{
                            Text(guess5.showArrow ? "U" : "D")
                            HStack{
                                Circle()
                                    .stroke(.white, lineWidth: 1)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(.red)
                                Text(guess5.guessNumber)
                            }
                        }
//                        HStack{
//                            Circle()
//                                .stroke(.white, lineWidth: 1)
//                                .frame(width: 100, height: 50)
//                                .foregroundColor(.red)
//                            Text(guess4.guessNumber)
//                        }
//                        HStack{
//                            Circle()
//                                .stroke(.white, lineWidth: 1)
//                                .frame(width: 100, height: 50)
//                                .foregroundColor(.red)
//                            Text(guess5.guessNumber)
//                        }
                    }
                    .font(.title)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .padding(30)
                    Spacer()
                }
                
                
                HStack {
                    ForEach((0...5), id: \.self) { num in
                        Button(action: {
                            currentGuess += "\(num)"
                        }, label: {
                            Text("\(num)")
                                .padding(20)
                                .background(.white)
                                .clipShape(Circle())
                        })
                        
                        
                    }
                }
                
                HStack {
                    ForEach((6...9), id: \.self) { num in
                        Button(action: {
                            currentGuess += "\(num)"
                        }, label: {
                            Text("\(num)")
                                .padding(20)
                                .background(.white)
                                .clipShape(Circle())
                        })
                        
                        
                    }
                }
                HStack{
                    Button(action: {
                        currentRound+=1
                        
                        switch currentRound {
                        case 1:
//                            if(guess1.guessNumber > number){
//                                guess1.showArrow.toggle()
//                            }
                            guess1.showArrow.toggle()
                            guess1.guessNumber = currentGuess
                        case 2: 
                            guess2.showArrow.toggle()
                            guess2.guessNumber = currentGuess
                        case 3: 
                            guess3.showArrow.toggle()
                            guess3.guessNumber = currentGuess
                        case 4: 
                            guess4.showArrow.toggle()
                            guess4.guessNumber = currentGuess
                        case 5: 
                            guess5.showArrow.toggle()
                            guess5.guessNumber = currentGuess
                        default:
                            break
                        }
                    }, label: {
                        Text("Submit")
                            .padding()
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    })
                    Button(action: {
                        currentGuess.popLast()
                    }, label: {
                        Text("Delete")
                            .padding()
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    })
                }
            }
        }
    }
}

#Preview {
    GamePage2(inputNum: .constant(2))
}
