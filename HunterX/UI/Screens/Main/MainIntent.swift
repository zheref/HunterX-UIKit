//
//  MainIntents.swift
//  HunterX
//
//  Created by Sergio Daniel on 23/02/21.
//

import Foundation

struct MainIntent : XIntent {
    let name: String
    let data: Dictionary?
}

struct MainSegue : XIntent {
    let name: String
    let data: Dictionary? = nil
    
    static let homeToAdd: MainSegue = MainSegue(name: MainSegueIdentifier.homeToAdd.rawValue)
}
