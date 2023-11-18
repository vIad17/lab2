//
//  ContentView.swift
//  pipipupuchek
//
//  Created by user225687 on 11/17/23.
//

import SwiftUI

struct ContentView: View {
    let scrum: UserScrum;
    var body: some View {
        ZStack {
            HStack(alignment: .center){
                    
                VStack(alignment: .leading, spacing: 6) {
                    Text("Hello,")
                        .font(.custom(Fonts.poppins, size: Sizes.h2))
                        .foregroundColor(Colors.grey)
                    	
                    Text("Hi " + scrum.username)
                        .font(
                            Font.custom(Fonts.poppins, size: Sizes.h1)
                                .weight(.bold)
                        )
                        .foregroundColor(Colors.darkBlue)
                        .padding(0)
                    
                }
                Spacer()
                Button(action: {}) {
                    Image(scrum.image)
                }

            }.padding(0)
            .frame(width: 327, alignment: .center)
            
        }
            .frame(width: 375, height: 812)
            .background(.white)
    }
        
    
    
        
        struct ContentView_Previews: PreviewProvider {
            static var scrum = UserScrum.sampleData
            static var previews: some View {
                ContentView(scrum: scrum)
            }
        }
    }

