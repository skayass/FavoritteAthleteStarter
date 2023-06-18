//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by test on 11/20/21.
//

import Foundation

struct Athlete {
    let name: String
    let age: String
    let league: String
    let team: String
    
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
}


