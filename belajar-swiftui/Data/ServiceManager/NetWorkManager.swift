//
//  ContentManager.swift
//  belajar-swiftui
//
//  Created by lukmanma on 11/10/23.
//

import Foundation

class NetWorkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){(data,response,error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                            let results = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                        }
                        catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
