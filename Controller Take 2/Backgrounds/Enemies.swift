//
//  Enemies.swift
//  Controller Take 2
//
//  Created by PMStudent on 11/1/21.
//

import SwiftUI

struct Enemies: View {
    @State public var Enemy1OffsetX: CGFloat = -150
    @State public var Enemy1OffsetY: CGFloat = -500
    @State public var placeholder: Int = 0
    @State public var RandomIteration: Int = 0
    @State private var enemyLane = 1
    @State public var carLane = 2
    
    var body: some View {
        ZStack {
            Text(String(Float(Enemy1OffsetY)))
            Image("CarUP")
                .resizable()
                .frame(width: 80, height: 80)
                .rotationEffect(.degrees(180))
                .offset(x: Enemy1OffsetX, y: Enemy1OffsetY)
        }
        .onAppear(perform: {
            Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
                if (placeholder == 0) {
                    RandomIteration = Int.random(in: 1...100)
                    enemyLane = Int.random(in: 1...4)
                    placeholder += 1
                }
                
                carLane = ContentView().lane
                
                if(carLane == enemyLane && Enemy1OffsetY == 150) {
                    fatalError()
                }
                
                if (placeholder == RandomIteration) {
                    if (Enemy1OffsetY != 650) {
                        Enemy1OffsetY += 1
                    } else {
                        Enemy1OffsetY = -500
                        placeholder = 0
                    }
                } else {
                    placeholder += 1
                }
                
                if(enemyLane == 1) {
                    Enemy1OffsetX = -150
                } else if (enemyLane == 2) {
                    Enemy1OffsetX = -50
                } else if (enemyLane == 3) {
                    Enemy1OffsetX = 50
                } else if (enemyLane == 4) {
                    Enemy1OffsetX = 150
                }
            }
            
        })
    }
}

struct Enemies_Previews: PreviewProvider {
    static var previews: some View {
        Enemies()
    }
}
