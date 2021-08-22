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
                        CircleImage(imageName: "lilly")
                        Text(quote)
                    }
                    
                    
                }
            }
        }
        
    }
}



struct CircleImage: View {
    var imageName: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray,lineWidth: 2))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                .frame(width: 100, height: 100)
                .font(.headline)
        }
    }
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
