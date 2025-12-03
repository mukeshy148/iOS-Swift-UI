//
//  ContentView.swift
//  SwiftUI Basics App
//
//  Created by Intern on 03/12/25.
//

import SwiftUI

struct ContentView: View {
    let colorList1 = [Color.red , Color.yellow , Color.white , Color.orange]
    let colorList2 = [Color.black , Color.blue , Color.white , Color.green]
    
    let rotationAngel : CGFloat =    360.0
    
    @State private var offSetY : CGFloat = 40
    
    
    @State private var ScreenTapped : Bool = false
    
    var text1 : String {
        ScreenTapped ? "Swift Ui " : "SwiftUI lets you build beautiful, interactive UIs declaratively, and you can combine views."
    }
    var body: some View {
        ZStack  {
            LinearGradient(
                colors: ScreenTapped ? colorList1 : colorList2 ,
                startPoint : .topLeading,
                endPoint: .bottomTrailing,
                
            )
            .opacity(0.6)
            .ignoresSafeArea()
            
            
            
            Text(
                text1
            )
            .font(
                ScreenTapped ? .title : .title2
            )
            .fontWeight(
                .semibold
            )
            .padding(
                20
            )
            .background(
                Color.black.opacity(
                    0.2
                )
            )
            .cornerRadius(
                30
            )
            .offset(
                y: offSetY
            )
            .multilineTextAlignment(
                .center
            )
            .padding()
            .rotation3DEffect(
                .degrees(
                    ScreenTapped ? 0 : rotationAngel),
                axis: (
                    x: 1,
                    y: 1,
                    z: -1
                )
            )
                
                
        }
        .onTapGesture {
          
            
            withAnimation(.smooth(duration : 1)){
                ScreenTapped.toggle()
                offSetY = ScreenTapped ? 0 : -40
            }
        }
       
    }
}

#Preview {
    ContentView()
}
