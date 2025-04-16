//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/16/25.
//

import Foundation
extension Bundle{
    func decode<T: Codable>( _ file: String) -> T{
        // Locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Couldn't find \(file) in bundle.")
        }
        //create property for the data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Couldn't load \(file) as Data.")
        }
        //create decoder
        let decoder = JSONDecoder()
        
        //create property for the decoder
        guard let decodedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Couldn't decode \(file) as \(T.self).")
        }
        //return ready to use data
        return decodedData
    }
}
