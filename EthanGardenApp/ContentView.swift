//
//  ContentView.swift
//  EthanGardenApp
//
//  Created by Ethan Garden on 2023-11-01.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.init(srgbRed: 0.91, green: 0.2, blue: 0.05, alpha: 0.7))
                .ignoresSafeArea()
            
            VStack {
                
                Text("Ethan Garden")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .padding(5.0)
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .background(.green)
                    .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                
                Text("Task 1")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
                
                
            }
            .padding(.bottom, 475.0)
            
            Text("bottom")
                .font(.title3)
                .foregroundColor(Color.blue)
                .padding(.top, 700.0)
        
            
            
        }
    
        
        
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
