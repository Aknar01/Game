//
//  ContentView.swift
//  game2
//
//  Created by Aknar Assanov on 08.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State var score = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        VStack(spacing:20){
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Spacer()
            Text("Credits: \(score)")
            Spacer()
            HStack{
                Image("slot\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("slot\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("slot\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button("Spin") {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3 {
                    score += 50
                }
                
                else {
                    score -= 5
                }
        }
            .padding()
            .padding(.horizontal, 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(30)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
