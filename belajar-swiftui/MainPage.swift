//
//  MainPage.swift
//  belajar-swiftui
//
//  Created by lukmanma on 03/11/23.
//

import SwiftUI



struct MainPage: View {
    
//    @State var selectedTab = 0
//
    var body: some View {
        TabView {
                  HomePage()
                      .tabItem {
                          Label("List Locations", systemImage: "map")
                      }
                  
                  ProfilePage()
                      .tabItem {
                          Label("Profile", systemImage: "person.crop.circle")
                      }
              }
              .navigationBarHidden(true)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
