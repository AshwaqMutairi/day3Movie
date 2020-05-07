//
//  Movie.swift
//  day3Movie
//
//  Created by ash mutairi on 5/7/20.
//  Copyright © 2020 Ashwaq. All rights reserved.
//

import Foundation

struct Movie: Hashable, Identifiable{
    
    var name: String
    var characters: [String]
    var id = UUID()
    
    }


let movies: [Movie] = [
    Movie(name: "Death Note", characters: ["Light Yagami", "Ryuk", "L"]),
    Movie(name: "Attack on Titans", characters: ["Eren Yeager", "Mikasa Ackerman", "Levi Ackerman"]),
    Movie(name: "Naruto", characters: ["Naruto Uzumaki", "Sasuke Uchiha", "Sakura Haruno"]),
    Movie(name: "Detective Conan", characters: ["Conan Edogawa", "Kogoro Mori", "Ran Mouri"]),

]

