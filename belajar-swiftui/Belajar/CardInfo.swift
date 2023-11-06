//
//  CardInfo.swift
//  belajar-swiftui
//
//  Created by lukmanma on 02/11/23.
//

import SwiftUI

struct CardInfo: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63,blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("lukman")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Lukman sefriyanto")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                
                InfoView(phone: "+6292322377542", imageName: "phone.fill")
                
                }
            }
            
        }
}

struct CardInfo_Previews: PreviewProvider {
    static var previews: some View {
        CardInfo()
    }
}
