//
//  LandmarkRow.swift
//  belajar-swiftui
//
//  Created by lukmanma on 06/11/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
        }
    }
    
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let landmarks = ModelData().landmarks
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}

