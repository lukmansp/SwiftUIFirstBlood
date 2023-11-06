//
//  ModelData.swift
//  belajar-swiftui
//
//  Created by lukmanma on 06/11/23.
//

import Foundation


class ModelData:ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String)-> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldnt find \(filename) in main bundle.")
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldnt parse \(filename) from main bundle:\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldnt parse \(filename) as \(T.self): \n\(error)")
    }
}
