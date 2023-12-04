//
//  ContentView.swift
//  EthanGardenApp
//
//  Created by Ethan Garden on 2023-11-01.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var addtodo = ""
    @State var items = ["Go to the Gym", "Coffee with Kajsa", "Study for 1 hr"]
    
    
    var body: some View {
        
        

        VStack {
                
                HStack{
                    TextField("Things To do...", text: $addtodo)
                    
                    Button(action: {
                        items.append(addtodo)
                        addtodo = ""
                    }, label: {
                        Text("Add")
                    })
                      
                }
                
                
                List{
                    
                    ForEach(items, id: \.self) { item in
                        ToDoRowView(todoname: item)
                }
                    .onDelete{ (indexSet) in
                        self.items.remove(atOffsets: indexSet)
                        
                        
                        
                    }
                }
            
            VStack{
                Text("")
                    
                
            }

                
            }
            .padding()
        
        HStack{
            Text("Swipe to delete")
                .foregroundColor(Color.gray)
                .padding(.bottom, 14.0)
        }
    }
    
    func delete(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
