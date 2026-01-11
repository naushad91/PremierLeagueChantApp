//
//  Team.swift
//  PremierLeagueChantApp
//
//  Created by Naushad Ali Khan on 11/01/26.
//

import Foundation

struct Team {
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool = false
}
