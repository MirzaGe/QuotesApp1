//
//  ContentView.swift
//  QuotesApp1
//
//  Created by sherry on 22/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        MainView()
            Spacer()
        }.background(Image("motivation_bg")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all))
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
                        CircleImage(imageName: "lilly")
                        Text(quote)
                            Divider()
                            Text("By James Bond")
                                .italic()
                                .font(.custom("Helvetica neue", size: 14))
                        }.frame(width: 300, height: 300)
                        .foregroundColor(.blue)
                        .padding(.all,4)
                        .background(Color.gray)
                    }
                    
                    
                }
            }
        }
        
    }
}



struct CircleImage: View {
    var imageName: String
    var body: some View {
    
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray,lineWidth: 2))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                .frame(width: 100, height: 100)
                .font(.headline)
        
    }
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
