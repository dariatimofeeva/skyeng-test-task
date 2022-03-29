//
//  File.swift
//  skyeng-test-task
//
//  Created by Neifmetus on 09.03.2022.
//

import Foundation

struct Words: Decodable {
    let id: Int
    let text: String
    let meanings: [Meaning]
}
