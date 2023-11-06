//
//  HomePage.swift
//  belajar-swiftui
//
//  Created by lukmanma on 03/11/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        LandmarkList()
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .environmentObject(ModelData())
    }
}
