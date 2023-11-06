//
//  InfoView.swift
//  belajar-swiftui
//
//  Created by lukmanma on 10/10/23.
//

import SwiftUI

struct InfoView: View {
    let phone: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(Color.green)
                    Text(phone)}
                    .padding(.all)
                
            )
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(phone: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
