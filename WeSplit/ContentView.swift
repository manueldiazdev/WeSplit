//
//  ContentView.swift
//  WeSplit
//
//  Created by Manuel Diaz on 3/31/21.
//714225

import SwiftUI

struct ContentView: View {
    @State private var count = ""
    @State private var bcount = 0
    let selection = ["jammms", "thicc", "mega"]
    @State private var selected = 0
    var body: some View {
        NavigationView{
            Form{
                
                //You can replace Section with Group to get rid of the spacing
                Section{
                    Button("Count: \(bcount)"){
                        self.bcount += 1
                    }
                    Text("Amount of words: \(count.count) \nButton count: \(bcount)")
                    TextField("Type a word", text: $count)
                }
                
                Section{
                    
                    Picker("Select something", selection: $selected){
                        ForEach(0 ..< selection.count){
                            Text(self.selection[$0])
                            
                        }
                    }
                    
                    Text("word typed and selected? \(count) + \(selection[selected])")
                    ForEach(0 ..< 5){
                        Text("Line: \($0)")
                    }
                    
                    
                }
                
                
            }
            .navigationTitle("SwiftUI")
        }
        
        
        
        
    }
}
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
