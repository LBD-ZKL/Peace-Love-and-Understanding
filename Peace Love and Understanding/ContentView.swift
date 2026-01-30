//
//  ContentView.swift
//  Peace Love and Understanding
//
//  Created by Laura Becca Davis on 19/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Text("Whats so Funny 'Bout?")
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .bold()
                .padding()
            Spacer()
             
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)

            Text(message)
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .bold()
                .padding()
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    message = "Peace"
                    imageName = "peacesign"
                }
                Button("Love") {
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    imageName = "lightbulb.fill"
                }
            
            }
            .tint(.purple)
            .buttonStyle(.borderedProminent)
                
        }
        .padding()
    }
}
 
#Preview {
    ContentView()
}
