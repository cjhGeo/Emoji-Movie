//
//  ContentView.swift
//  Emoji Movie
//
//  Created by T Krobot on 16/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var shrekMovement = 230
    @State var chaseMovement = 300
    @State var chaseRotation: Angle = .zero
    @State var bossChaseMovement = 500
    @State var bossChasePoopingMovement = 900
    @State var deadShrekMovement = 300
    @State var craneMovementX = -500
    @State var craneMovementY = 20
    @State var craneSizeHeight = 200
    @State var angryChaseFaceMovement = 500
    @State var poopMovementX = 500
    @State var poopMovementY = -140
    @State var starEyesMovement = 500
    @State var shrekDestroyerOrbWidth = 0
    @State var shrekDestroyerOrbHeight = 0
    @State var shrekDestroyerOrbOpacity = 0
    @State var start = false
    
    var body: some View {
        ZStack {
            RadialGradient(colors: [.red, .green, .orange, .brown, .yellow, .purple, .pink],
                           center: .center,
                           startRadius: 0,
                           endRadius: 270)
            .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                Button {
                    
                    start = true
                    
                } label: {
                    Text("Start Show")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                if start {
                    ZStack {
                        VStack{
                            ZStack {
                                ZStack {
                                    Image("stage")
                                        .resizable()
                                        .scaledToFit()
                                    
                                    Image("deadShrek")
                                        .resizable()
                                        .frame(width: 225, height: 175)
                                        .offset(x: CGFloat(deadShrekMovement), y: 100)
                                        .onAppear {
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
                                                deadShrekMovement = 0
                                            }
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 12.1) {
                                                deadShrekMovement = 500
                                            }
                                        }
                                    
                                    Image("Shrek")
                                        .resizable()
                                        .frame(width: 175, height: 225)
                                        .offset(x: CGFloat(shrekMovement), y: 35)
                                        .onAppear {
                                            withAnimation(.easeInOut) {
                                                shrekMovement = 0
                                            }
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.15) {
                                                shrekMovement = 500
                                            }
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 12.15) {
                                                shrekMovement = 0
                                            }
                                        }
                                    
                                    Image("Sausage dog also to be beheaded")
                                        .resizable()
                                        .frame(width: 100, height: 75)
                                        .rotation3DEffect(chaseRotation, axis: (2, 0, 1))
                                        .offset(x: CGFloat(chaseMovement), y: 85)
                                        .onAppear {
                                            withAnimation(.easeInOut.delay(1.5)) {
                                                chaseMovement = 70
                                            }
                                            withAnimation(.linear(duration: 3).delay(3.5)) {
                                                chaseRotation = .degrees(3600)
                                                chaseMovement = 750
                                            }
                                        }
                                    Image("Sausage dog also to be beheaded")
                                        .resizable()
                                        .frame(width: 100, height: 75)
                                        .rotation3DEffect(chaseRotation, axis: (1, 2, 0))
                                        .offset(x: CGFloat(chaseMovement), y: 15)
                                        .onAppear {
                                            withAnimation(.linear(duration: 3).delay(3.5)) {
                                                chaseRotation = .degrees(3600)
                                            }
                                        }
                                    Image("Sausage dog also to be beheaded")
                                        .resizable()
                                        .frame(width: 100, height: 75)
                                        .rotation3DEffect(chaseRotation, axis: (0, 2, 1))
                                        .offset(x: CGFloat(chaseMovement), y: -50)
                                        .onAppear {
                                            withAnimation(.linear(duration: 3).delay(3.5)) {
                                                chaseRotation = .degrees(3600)
                                            }
                                        }
                                    Image("Wrecking Ball Crane")
                                        .resizable()
                                        .frame(width: 250, height: CGFloat(craneSizeHeight))
                                        .offset(x: CGFloat(craneMovementX), y: CGFloat(craneMovementY))
                                        .onAppear {
                                            withAnimation(.easeIn(duration: 1).delay(2.6)) {
                                                craneMovementX = -50
                                            }
                                            withAnimation(.easeIn(duration: 1.545).delay(9.62)) {
                                                craneSizeHeight = 0
                                                craneMovementY = 50
                                            }
                                        }
                                    
                                    //curtains
                                    Image("Background (4)")
                                        .resizable()
                                        .scaledToFit()
                                    
                                    Image("Sausage dog also to be beheaded")
                                        .resizable()
                                        .frame(width: 400, height: 250)
                                        .offset(x: CGFloat(bossChaseMovement))
                                        .onAppear {
                                            withAnimation(.easeInOut(duration: 2).delay (4.5)) {
                                                bossChaseMovement = 150
                                            }
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 7.5) {
                                                bossChaseMovement = 500
                                            }
                                        }
                                    
                                    Image("Background (5)")
                                        .resizable()
                                        .frame(width: 180, height: 180)
                                        .offset(x: CGFloat(angryChaseFaceMovement), y: -25)
                                        .onAppear {
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 6.5) {
                                                angryChaseFaceMovement = 70
                                            }
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 7.5) {
                                                angryChaseFaceMovement = 500
                                            }
                                        }
                                }
                                
                                
                                ZStack{
                                    
                                    Text("💩")
                                        .font(.system(size: 80))
                                        .offset(x: CGFloat(poopMovementX), y: CGFloat(poopMovementY))
                                        .onAppear {
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                                                poopMovementX = -25
                                            }
                                            withAnimation(.easeIn(duration: 2.71).delay (9.13)) {
                                                poopMovementY = 100
                                            }
                                        }
                                    
                                    
                                    Image("Sausage dog pooppoop")
                                        .resizable()
                                        .frame(width: 1250, height: 300)
                                        .offset(x: CGFloat(bossChasePoopingMovement), y: -75)
                                        .onAppear {
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 7.6) {
                                                bossChasePoopingMovement = 350
                                            }
                                        }
                                    
                                    Image("Star eyes")
                                        .resizable()
                                        .frame(width: 50, height: 75)
                                        .offset(x: CGFloat(starEyesMovement), y: -28)
                                        .onAppear {
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 12.15) {
                                                starEyesMovement = 18
                                            }
                                        }
                                }
                            }
                            Image("Many people")
                                .resizable()
                                .scaledToFit()
                        }
                        
                        //Here is the Shrek Destroyer Orb
                        Image("Screenshot 2022-06-16 at 11.32.49_cleanup_cleanup (1)")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(CGFloat(shrekDestroyerOrbHeight))
                            .opacity(CGFloat(shrekDestroyerOrbOpacity))
                            .offset(x: 30, y: -150)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 12.75) {
                                    shrekDestroyerOrbOpacity = 100
                                }
                                withAnimation(.easeIn(duration: 300).delay(14)) {
                                    shrekDestroyerOrbWidth = 5000
                                    shrekDestroyerOrbHeight = 5000
                                }
                            }
                        
                    }
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
