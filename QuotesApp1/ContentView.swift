//
//  ContentView.swift
//  QuotesApp1
//
//  Created by sherry on 22/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       MainView()
    }
}

struct MainView: View {
    let quotes = ["quotes1","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2","quotes2"]
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Quotes Available")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.orange)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.quotes, id:\.self) {
                        quote in
                        VStack {
                            Image("lilly")
                                .resizable()
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray,lineWidth: 2))
                                
                                .frame(width: 60, height: 60)
                                Text(quote)
                                .font(.headline)
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
