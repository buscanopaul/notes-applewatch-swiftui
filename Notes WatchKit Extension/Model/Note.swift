//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by pbuscano on 4/12/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
