//
//  BackgroundView.swift
//  Controller Take 2
//
//  Created by PMStudent on 10/21/21.
//

import SwiftUI

struct BackgroundView: View {
    @State public var offset0: CGFloat = 550
    @State public var offset1: CGFloat = 450
    @State public var offset2: CGFloat = 350
    @State public var offset3: CGFloat = 250
    @State public var offset4: CGFloat = 150
    @State public var offset5: CGFloat = 50
    @State public var offset6: CGFloat = -50
    @State public var offset7: CGFloat = -150
    @State public var offset8: CGFloat = -250
    @State public var offset9: CGFloat = -350
    @State public var offset10: CGFloat = -450
    @State public var offset11: CGFloat = -550
    @State public var offset12: CGFloat = -650
    
    @State public var MovementSpeed: CGFloat = 50
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            // Lanes Creation
            Rectangle()
                .ignoresSafeArea()
                .frame(width: 10, height: 1000)
                .offset(x: 100)
            
            Rectangle()
                .ignoresSafeArea()
                .frame(width: 10, height: 1000)
                .offset(x: 0)
            
            Rectangle()
                .ignoresSafeArea()
                .frame(width: 10, height: 1000)
                .offset(x: -100)
            
            // Moving Tiles
            Group {
                Group {
                    Group {
                        SmallBox()
                            .offset(x: -150, y: offset0)
                        SmallBox()
                            .offset(x: -150, y: offset1)
                    }
                    SmallBox()
                        .offset(x: -150, y: offset2)
                    
                    SmallBox()
                        .offset(x: -150, y: offset3)
                    
                    SmallBox()
                        .offset(x: -150, y: offset4)
                    
                    SmallBox()
                        .offset(x: -150, y: offset5)
                    
                    SmallBox()
                        .offset(x: -150, y: offset6)
                    
                    SmallBox()
                        .offset(x: -150, y: offset7)
                    
                    SmallBox()
                        .offset(x: -150, y: offset8)
                    
                    SmallBox()
                        .offset(x: -150, y: offset9)
                    
                    Group {
                        SmallBox()
                            .offset(x: -150, y: offset10)
                        SmallBox()
                            .offset(x: -150, y: offset11)
                    }
                }
                
                Group {
                    Group {
                        SmallBox()
                            .offset(x: -50, y: offset0)
                        SmallBox()
                            .offset(x: -50, y: offset1)
                    }
                    SmallBox()
                        .offset(x: -50, y: offset2)
                    
                    SmallBox()
                        .offset(x: -50, y: offset3)
                    
                    SmallBox()
                        .offset(x: -50, y: offset4)
                    
                    SmallBox()
                        .offset(x: -50, y: offset5)
                    
                    SmallBox()
                        .offset(x: -50, y: offset6)
                    
                    SmallBox()
                        .offset(x: -50, y: offset7)
                    
                    SmallBox()
                        .offset(x: -50, y: offset8)
                    
                    SmallBox()
                        .offset(x: -50, y: offset9)
                    
                    Group {
                        SmallBox()
                            .offset(x: -50, y: offset10)
                        SmallBox()
                            .offset(x: -50, y: offset11)
                    }
                }
                
                Group {
                    Group {
                        SmallBox()
                            .offset(x: 50, y: offset0)
                        SmallBox()
                            .offset(x: 50, y: offset1)
                    }
                    SmallBox()
                        .offset(x: 50, y: offset2)
                    
                    SmallBox()
                        .offset(x: 50, y: offset3)
                    
                    SmallBox()
                        .offset(x: 50, y: offset4)
                    
                    SmallBox()
                        .offset(x: 50, y: offset5)
                    
                    SmallBox()
                        .offset(x: 50, y: offset6)
                    
                    SmallBox()
                        .offset(x: 50, y: offset7)
                    
                    SmallBox()
                        .offset(x: 50, y: offset8)
                    
                    SmallBox()
                        .offset(x: 50, y: offset9)
                    
                    Group {
                        SmallBox()
                            .offset(x: 50, y: offset10)
                        SmallBox()
                            .offset(x: 50, y: offset11)
                    }
                }
                
                Group {
                    Group {
                        SmallBox()
                            .offset(x: 150, y: offset0)
                        SmallBox()
                            .offset(x: 150, y: offset1)
                    }
                    SmallBox()
                        .offset(x: 150, y: offset2)
                    
                    SmallBox()
                        .offset(x: 150, y: offset3)
                    
                    SmallBox()
                        .offset(x: 150, y: offset4)
                    
                    SmallBox()
                        .offset(x: 150, y: offset5)
                    
                    SmallBox()
                        .offset(x: 150, y: offset6)
                    
                    SmallBox()
                        .offset(x: 150, y: offset7)
                    
                    SmallBox()
                        .offset(x: 150, y: offset8)
                    
                    SmallBox()
                        .offset(x: 150, y: offset9)
                    
                    Group {
                        SmallBox()
                            .offset(x: 150, y: offset10)
                        SmallBox()
                            .offset(x: 150, y: offset11)
                    }
                }
            }
            .onAppear(perform: {
                // "Illusion of reality"
                Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true)  { timer in
                    offset0 += MovementSpeed
                    offset1 += MovementSpeed
                    offset2 += MovementSpeed
                    offset3 += MovementSpeed
                    offset4 += MovementSpeed
                    offset5 += MovementSpeed
                    offset6 += MovementSpeed
                    offset7 += MovementSpeed
                    offset8 += MovementSpeed
                    offset9 += MovementSpeed
                    offset10 += MovementSpeed
                    offset11 += MovementSpeed
                    
                    if (offset0 == 650) {
                        offset0 = -650
                    } else if (offset1 == 650) {
                        offset1 = -650
                    } else if (offset2 == 650) {
                        offset2 = -650
                    } else if (offset3 == 650) {
                        offset3 = -650
                    } else if (offset4 == 650) {
                        offset4 = -650
                    } else if (offset5 == 650) {
                        offset5 = -650
                    } else if (offset6 == 650) {
                        offset6 = -650
                    } else if (offset7 == 650) {
                        offset7 = -650
                    } else if (offset8 == 650) {
                        offset8 = -650
                    } else if (offset9 == 650) {
                        offset9 = -650
                    } else if (offset10 == 650) {
                        offset10 = -650
                    } else if (offset11 == 650) {
                        offset11 = -650
                    }
                }
            })
            
            // Enemies Spawn
            Enemies()
            //Keep this last
            ContentView()
            
        }
        
    }
}

struct SmallBox: View {
    var body: some View {
        Rectangle()
            .frame(width: 30, height: 50)
            .foregroundColor(Color.yellow)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
