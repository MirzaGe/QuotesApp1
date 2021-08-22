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
            CircleImage(imageName: "lilly")
                .frame(width: 160, height: 160)
                .padding(.top, 150)
                .padding(.bottom, 20)
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
                        .foregroundColor(.gray)
                        .padding(.all,4)
                        .background(Color.white)
                        .cornerRadius(13)
                        .overlay(Rectangle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [.clear, Color.pink]), startPoint: .center, endPoint: .topLeading))
                                    .clipped().shadow(radius: 8))
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
