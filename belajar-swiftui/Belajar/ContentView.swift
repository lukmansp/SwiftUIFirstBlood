//
//  ContentView.swift
//  belajar-swiftui
//
//  Created by lukmanma on 10/10/23.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetWorkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) {post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("HAXORNEWS")
        }
        .onAppear{
            self.networkManager.fetchData() 
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
