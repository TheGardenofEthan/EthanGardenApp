//
//  ToDoRowView.swift
//  EthanGardenApp
//
//  Created by Ethan Garden on 2023-11-23.
//

import SwiftUI

struct ToDoRowView: View {
    
    var todoname = "XYZ"
    
    var body: some View {
        HStack{
            
            Text("To Do:")
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
                .padding(.all)
            
            Text(todoname)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
        
    }
}

#Preview {
    ToDoRowView()
}
