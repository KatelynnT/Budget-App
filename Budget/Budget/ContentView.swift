//
//  ContentView.swift
//  Budget
//
//  Created by Katelynn Thorn on 4/27/21.
//

import SwiftUI
import iColor
import Foundation
import UIKit

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.darkGray.edgesIgnoringSafeArea(.all)
           
            VStack{
                Text(Date(), style: .date)
                    .font(.custom("HelveticaNeue-CondensedBold", size: 45))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .textCase(.uppercase)
                    .position(x: 150, y: 100)
                
                ZStack{
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 350, height: 200)
                        .cornerRadius(25)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.white, lineWidth: 4))
                    //comment
                    
                    Text("Planned Budget")
                        .font(.custom("HelveticaNeue-CondensedBold", size: 30))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .textCase(.uppercase)
                        
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
