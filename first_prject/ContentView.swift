//
//  ContentView.swift
//  first_prject
//
//  Created by Eng.shoqi aldh on 5/1/20.
//  Copyright © 2020 Eng.shoqi aldh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
 @State var theker = " الله اكبر"
 @State var counter = "0"
    var body: some View {
    ZStack {
        BG()
        VStack {
            
        Text(theker)
            .foregroundColor(.white)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
        
        Text(counter)
                  .foregroundColor(.white)
                  .multilineTextAlignment(.center)
                  .font(.largeTitle)
                  .padding()
   
                
            }
        
        
    
    }
        
             .onTapGesture(){
                self.counter = String(Int(self.counter)! + 1) }
                .onLongPressGesture {
                    self.theker = athkar.randomElement()!
                    self.counter = "0"
        }
    .edgesIgnoringSafeArea(.all)
    }
}
  

struct BG: View {
    var body: some View {
        ZStack {
            Image ( "BACKGROUND")
                .resizable()
            
            VStack{
                Image ("Header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image ("Mosque")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

}
