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
            VStack(alignment: .leading ){
                Text(Date(), style: .date)
                    .font(.custom("HelveticaNeue-CondensedBold", size: 45))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .textCase(.uppercase)
                
                ZStack{
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 391, height: 102)
                        .cornerRadius(25)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.white, lineWidth: 4))
                    VStack{
                    HStack{
                    Text("Planned Budget")
                        .font(.custom("HelveticaNeue-CondensedBold", size: 30))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .textCase(.uppercase)
                        
                        Spacer(minLength: 2)
                        Button(action: {
                                print("More")}){
                            Image(systemName: "ellipsis")
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                        }
                    }.padding(.leading, 30)
                    .padding(.trailing, 30)
                    HStack{
                    Spacer()
                    Text("$1,550.00")
                            .font(.custom("HelveticaNeue-CondensedBold", size: 35))
                            .fontWeight(.semibold)
                        .foregroundColor(.white)
                        
                    Text("a month")
                                .font(.custom("HelveticaNeue", size: 20))
                        .foregroundColor(.white)
                        
                    
                    }.padding(.trailing, 40)
                    }
                }
                
                ZStack{
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 391, height: 209)
                        .cornerRadius(25)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.blue, lineWidth: 4))
                    VStack{
                    HStack{
                    Text("Current Spending")
                        .font(.custom("HelveticaNeue-CondensedBold", size: 30))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .textCase(.uppercase)
                        
                        Spacer()
                        Button(action: {
                                print("More")}){
                            Image(systemName: "ellipsis")
                                .foregroundColor(.blue)
                                .font(.system(size: 30, weight: .bold))
                        }
                    }.padding(.leading, 30)
                    .padding(.trailing, 30)
                        
                    Text("$1,102.98")
                            .font(.custom("HelveticaNeue-CondensedBold", size: 60))
                            .fontWeight(.semibold)
                        .foregroundColor(.black)
                    HStack{
                    Spacer()
                    Text("of $1550.00")
                                .font(.custom("HelveticaNeue", size: 26))
                                .foregroundColor(.black)
                                   
                    }.padding(.trailing, 40)
                
                    }.padding(.bottom, 45)
                    
                    ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 339, height: 45)
                        .cornerRadius(15)
                        .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blue, lineWidth: 4))
                        .offset(y: 97)
                        
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 118, height: 45)
                        .offset(y: 97)
                    }
                    HStack{
                    Text("Daily")
                        .font(.custom("HelveticaNeue", size: 16))
                        .foregroundColor(.blue)
                    Spacer()
                    Text("Monthly")
                        .font(.custom("HelveticaNeue", size: 16))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)

                    Spacer()
                    Text("Yearly")
                            .font(.custom("HelveticaNeue", size: 16))
                            .foregroundColor(.blue)
                        
                    }.offset(y: 97)
                    .padding(.leading, 80)
                    .padding(.trailing, 80)
                }.padding(.top)
                
                ZStack{
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 391, height: 163)
                        .cornerRadius(25)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.red, lineWidth: 4))
                    VStack{
                    HStack{
                    Text("Bill Reminder:")
                        .font(.custom("HelveticaNeue", size: 19))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .textCase(.uppercase)
                        
                    Text("Power Bill")
                            .font(.custom("HelveticaNeue", size: 19))
                            .foregroundColor(.white)
                            .textCase(.uppercase)
                        
                        Spacer()
                        Button(action: {
                                print("More")}){
                            Image(systemName: "exclamationmark.circle")
                                .foregroundColor(.red)
                                .font(.system(size: 26, weight: .bold))
                        }
                    }.padding(.leading, 45)
                    .padding(.trailing, 30)
                        
                    HStack{
                    Text("Due\nApril 6, 2021")
                            .font(.custom("HelveticaNeue", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    Spacer()
                    Text("$75.98")
                            .font(.custom("HelveticaNeue-CondensedBold", size: 45))
                            .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    }.padding(.trailing, 40)
                    .padding(.leading, 40)
                    .padding(.bottom, 5)
                    .padding(.top, 5)
                     
                    HStack{
                        Button(action: {
                                print("More")}){
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(.green)
                                .font(.system(size: 26, weight: .bold))
                        }
                        Spacer()
                        Button(action: {
                                print("More")}){
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.red)
                                .font(.system(size: 26, weight: .bold))
                        }
                        Spacer()
                        Button(action: {
                                print("More")}){
                            Image(systemName: "ellipsis.circle")
                                .foregroundColor(.yellow)
                                .font(.system(size: 26, weight: .bold))
                        }
                    }.padding(.trailing, 40)
                    .padding(.leading, 40)
                        
                        
                    }
                    
                    
                }.padding(.top, 35)
                
                ZStack{
                    
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 391, height: 163)
                        .cornerRadius(25)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.green, lineWidth: 4))
                    VStack{
                    HStack{
                    Text("Goal!")
                        .font(.custom("HelveticaNeue", size: 19))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .textCase(.uppercase)
                        
                    Text("Go to DISNEYLAND")
                            .font(.custom("HelveticaNeue", size: 19))
                            .foregroundColor(.white)
                            .textCase(.uppercase)
                        
                    }
                        
                    HStack{
                    Text("BY\nSep 15, 2021")
                            .font(.custom("HelveticaNeue", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    Spacer()
                    VStack{
                        Text("$650")
                            .font(.custom("HelveticaNeue-thin", size: 20))
                            .foregroundColor(.green)
                            .textCase(.uppercase)
                            .offset(y: 10)
                        
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 48, height: 1)
                            .padding(0)

                        Text("$1,000")
                            .font(.custom("HelveticaNeue-thin", size: 20))
                            .foregroundColor(.white)
                            .textCase(.uppercase)
                            .offset(y: -9)
                            
                    }
                    Text("65%")
                            .font(.custom("HelveticaNeue-CondensedBold", size: 45))
                            .fontWeight(.semibold)
                        .foregroundColor(.green)
                        .padding(8)
                        .border(Color.green, width: 2)
                            .cornerRadius(10)
                        
                    
                    }.padding(.trailing, 40)
                    .padding(.leading, 40)
                    .padding(.bottom, 5)
                    .padding(.top, 5)
                     
                    HStack{
                        Button(action: {
                                print("More")}){
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(.green)
                                .font(.system(size: 26, weight: .bold))
                        }
                        Spacer()
                        Button(action: {
                                print("More")}){
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.red)
                                .font(.system(size: 26, weight: .bold))
                        }
                        Spacer()
                        Button(action: {
                                print("More")}){
                            Image(systemName: "ellipsis.circle")
                                .foregroundColor(.yellow)
                                .font(.system(size: 26, weight: .bold))
                        }
                    }.padding(.trailing, 40)
                    .padding(.leading, 40)
                        
                        
                    }
                    
                }.padding(.top)
                
                
            }.padding(.top, 60)
            
            ZStack{
                Capsule()
                    .fill(Color.white)
                    .frame(width: 127, height: 63)
                    .overlay(RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.blue, lineWidth: 2))
                ZStack{
                    HStack{
                        Button(action: {
                                print("More")}){
                            Image(systemName: "plus")
                                .foregroundColor(.blue)
                                .font(.system(size: 26))
                        }
                        Spacer()
                        Button(action: {
                                print("More")}){
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(.blue)
                                .font(.system(size: 26))
                        }
                        
                    }.padding(.leading, 160)
                    .padding(. trailing, 160)
                }
                                        
            }.position(x: 335, y: 830)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
