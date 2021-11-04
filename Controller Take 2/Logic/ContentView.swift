//
//  ContentView.swift
//  Controller Take 2
//
//  Created by PMStudent on 10/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State public var carOffset: CGFloat = 150
    @State public var lane: Int = 2
    
    var body: some View {
        ZStack {
            
            Image("CarUP")
                .resizable()
                .frame(width: 80, height: 80)
                .offset(x: carOffset, y: 150)
                .onAppear(perform: {
                    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true)  { timer in
                        // Lane Logic
                        if(lane == 1) {
                            carOffset = -150
                        } else if (lane == 2) {
                            carOffset = -50
                        } else if (lane == 3) {
                            carOffset = 50
                        } else if (lane == 4) {
                            carOffset = 150
                        }
                    }
                })
            
            // Keep this Last in this File
            // Less Jank Controller
            HStack {
                Button(action : {
                    if (lane != 1) { lane -= 1 }
                }) {
                    Rectangle()
                        .frame(width: 200, height: 900)
                        .opacity(0)
                }
                
                Button(action: {
                    if (lane != 4) { lane += 1 }
                }) {
                    Rectangle()
                        .frame(width: 200, height: 900)
                        .opacity(0)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
